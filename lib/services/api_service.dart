import 'package:fiska/models/product.dart';
import 'package:fiska/models/user.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

// class ApiService {
//   static var client = http.Client();
//   static String baseUrl = "http://10.0.2.2:8000/api/v1/";
//   Map<String, String> headers = {
//     "Content-Type": "applicaton/json",
//   };
//   static Future<List<Products>> fetchProducts() async {
//     Response response = await client.get(baseUrl + 'products/');
//     if (response.statusCode == 200) {
//       var jsonString = response.body;
//       return productsFromJson(jsonString);
//     } else {
//       return null;
//     }
//   }
// }
