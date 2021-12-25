import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:fiska/models/cart.dart';
import 'package:fiska/models/orders.dart';
import 'package:fiska/models/product_detail.dart';
import 'package:fiska/models/user.dart';
import 'package:fiska/services/exception_service.dart';
import 'package:http/http.dart' as http;
import 'package:fiska/models/product.dart';
import 'package:dio/dio.dart';

class ApiService {
  static const int TIME_OUT_DURATION = 30;
  static var client = http.Client();
  static var baseUrl = "https://fiskah.com/app-api/v2.3/";
  static Map<String, String> headers = {};

  static void updateCookie(http.Response response) {
    String rawCookie = response.headers['set-cookie'];
    List cookieParts = rawCookie.split(",");
    List sessions = [];
    for (var elements in cookieParts) {
      List elementParts = elements.split(";");
      for (String value in elementParts) {
        if (value.contains("PHP")) {
          sessions.add(value);
        }
      }
    }
    headers['Cookie'] = sessions.last;
    print("sessionID:${sessions.last}");
  }

  static Future<List<ProductElement>> fetchProducts() async {
    var uri = Uri.parse("$baseUrl" + "products/");
    try {
      http.Response response = await http
          .get(
            uri,
          )
          .timeout(Duration(seconds: TIME_OUT_DURATION));
      if (response.statusCode == 200) {
        String jsonResponse = response.body;
        var product = productFromJson(jsonResponse);
        return product.data.products;
      } else {
        return null;
      }
    } on SocketException {
      throw FetchDataException('No Internet connection', uri.toString());
    } on TimeoutException {
      throw ApiNotRespondingException(
          "API not responding in time", uri.toString());
    }
  }

  static Future<ProductData> fetchProductsDetails(int id) async {
    var uri = Uri.parse("$baseUrl" + 'products/view/$id/');
    try {
      http.Response response =
          await http.post(uri).timeout(Duration(seconds: TIME_OUT_DURATION));
      if (response.statusCode == 200) {
        String jsonResponse = response.body;
        var productDetail = productDetailFromJson(jsonResponse);
        print("stuff: ${productDetail.data.product.data}");
        return productDetail.data.product.data;
      } else {
        return null;
      }
    } on SocketException {
      throw FetchDataException('No Internet connection', uri.toString());
    } on TimeoutException {
      throw ApiNotRespondingException(
          "API not responding in time", uri.toString());
    }
  }

  static Future<UserData> login(UserLogin userLogin) async {
    var uri = Uri.parse("$baseUrl" + "guest-user/login/");
    var body = UserLogin(
      username: userLogin.username,
      password: userLogin.password,
      userType: userLogin.userType,
    ).toJson();
    try {
      http.Response response = await http
          .post(
            uri,
            body: body,
          )
          .timeout(Duration(seconds: TIME_OUT_DURATION));
      updateCookie(response);
      //print(response);
      if (response.statusCode == 200) {
        print(headers["Cookie"]);
        var jsonResponse = response.body;
        var user = userFromJson(jsonResponse);
        return user.data;
      } else {
        return null;
      }
    } on SocketException {
      throw FetchDataException('No Internet connection', uri.toString());
    } on TimeoutException {
      throw ApiNotRespondingException(
          "API not responding in time", uri.toString());
    }
  }

  static Future<String> logout(UserLogout userLogout) async {
    var uri = Uri.parse("$baseUrl" + 'guest-user/logout/');
    Map<String, dynamic> body =
        UserLogout(fcmToken: userLogout.fcmToken, userType: userLogout.userType)
            .toJson();
    try {
      http.Response response = await http
          .post(uri, body: body)
          .timeout(Duration(seconds: TIME_OUT_DURATION));
      if (response.statusCode == 200) {
        String jsonResponse = response.body;
        var result = jsonDecode(jsonResponse);
        if (result["status"] == "1") {
          return "1";
        } else {
          return "0";
        }
      } else {
        return null;
      }
    } on SocketException {
      throw FetchDataException('No Internet connection', uri.toString());
    } on TimeoutException {
      throw ApiNotRespondingException(
          "API not responding in time", uri.toString());
    }
  }

  static Future<String> addToCart(AddToCart item) async {
    var uri = Uri.parse("$baseUrl" + 'cart/add/');
    var body = item.toJson();
    try {
      http.Response response = await http
          .post(
            uri,
            body: body,
          )
          .timeout(Duration(seconds: TIME_OUT_DURATION));
      if (response.statusCode == 200) {
        String jsonResponse = response.body;
        var result = jsonDecode(jsonResponse);
        if (result["status"] == "1" && result["msg"] == "Added Successfully") {
          return "1";
        } else {
          return "0";
        }
      } else {
        return null;
      }
    } on SocketException {
      throw FetchDataException('No Internet connection', uri.toString());
    } on TimeoutException {
      throw ApiNotRespondingException(
          "API not responding in time", uri.toString());
    }
  }

  static Future<String> removeFromCart(RemoveFromCart item) async {
    var uri = Uri.parse("$baseUrl" + 'cart/remove/');
    var body = item.toJson();
    try {
      http.Response response = await http
          .post(
            uri,
            body: body,
          )
          .timeout(Duration(seconds: TIME_OUT_DURATION));
      if (response.statusCode == 200) {
        String jsonResponse = response.body;
        var result = jsonDecode(jsonResponse);
        if (result["status"] == "1") {
          client.close();
          return "1";
        } else {
          client.close();
          return "0";
        }
      } else {
        client.close();
        return null;
      }
    } on SocketException {
      throw FetchDataException('No Internet connection', uri.toString());
    } on TimeoutException {
      throw ApiNotRespondingException(
          "API not responding in time", uri.toString());
    }
  }

  static Future<Products> shippingCartListing() async {
    var uri = Uri.parse("$baseUrl" + 'cart/listing/2');
    try {
      http.Response response = await http
          .get(
            uri,
            headers: headers,
          )
          .timeout(Duration(seconds: TIME_OUT_DURATION));
      if (response.statusCode == 200) {
        String jsonResponse = response.body;
        print(jsonResponse);
        Cart result = cartFromJson(jsonResponse);
        return result.data.products;
      } else {
        return null;
      }
    } on SocketException {
      throw FetchDataException('No Internet connection', uri.toString());
    } on TimeoutException {
      throw ApiNotRespondingException(
          "API not responding in time", uri.toString());
    }
  }

  static Future<OrderListingData> orderListing() async {
    var uri = Uri.parse(baseUrl + "buyer/order-search-listing");
    try {
      http.Response response = await client
          .post(uri, headers: headers)
          .timeout(Duration(seconds: TIME_OUT_DURATION));
      if (response.statusCode == 200) {
        var jsonResponse = response.body;
        OrderListing orderListing = orderListingFromJson(jsonResponse);
        return orderListing.data;
      } else {
        return null;
      }
    } on SocketException {
      throw FetchDataException('No Internet connection', uri.toString());
    } on TimeoutException {
      throw ApiNotRespondingException(
          "API not responding in time", uri.toString());
    }
  }

  static Future<OrderDetailsData> orderDetails(String id) async {
    var uri = Uri.parse(baseUrl + "buyer/view-order/$id/");
    try {
      http.Response response = await client
          .get(
            uri,
            headers: headers,
          )
          .timeout(Duration(seconds: TIME_OUT_DURATION));
      if (response.statusCode == 200) {
        var jsonResponse = response.body;
        OrderDetails orderDetails = orderDetailsFromJson(jsonResponse);
        return orderDetails.data;
      } else {
        return null;
      }
    } on SocketException {
      throw FetchDataException('No Internet connection', uri.toString());
    } on TimeoutException {
      throw ApiNotRespondingException(
          "API not responding in time", uri.toString());
    }
  }

  static Future userDetailsInfo() async {}

  static Future resetPassword(ChangePassword password) async {}
}
