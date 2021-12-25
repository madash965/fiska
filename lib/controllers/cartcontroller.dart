import 'package:fiska/controllers/exception_controller.dart';
import 'package:fiska/models/cart.dart';
import 'package:fiska/models/product.dart';
import 'package:fiska/pages/cartPage.dart';
import 'package:fiska/services/api_service.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartController extends GetxController with BaseController {
  var inCart = false.obs;
  var outCart = false.obs;
  var cartList = [].obs;
  final checkoutItems = [].obs;
  final cartMap = {}.obs;
  var isLoading = true.obs;

  void fetchShippingCartListing() async {
    try {
      isLoading(true);
      var cartItems =
          await ApiService.shippingCartListing().catchError(handleError);
      if (cartItems != null) {
        cartItems.available.forEach((element) {
          if (!cartList.contains(element)) {
            cartList.add(element);
          } else {
            print("available in cartlist already");
          }
        });
        cartItems.notAvailable.forEach((element) {
          if (!cartList.contains(element)) {
            cartList.add(element);
          } else {
            print("not available in cartlist already");
          }
        });
      }
    } catch (e) {
      print(e);
    } finally {
      isLoading(false);
    }
  }

  //add items to cartList
  addItems(ProductElement product) {
    //cartList.add(item);
    cartMap[product] = 1;
  }

  void addToCart(String selprod_id,
      {String addons, quantity, uwlist_id, ufp_id}) async {
    AddToCart item = AddToCart(
      addons: addons,
      quantity: quantity,
      uwlist_id: uwlist_id,
      selprod_id: selprod_id,
      ufp_id: ufp_id,
    );
    var result = await ApiService.addToCart(item).catchError(handleError);
    if (result == "1") {
      inCart(true);
    } else {
      inCart(false);
    }
  }

  void removeFromCart(String key, fulfilmentType) async {
    RemoveFromCart item =
        RemoveFromCart(key: key, fulfilmentType: fulfilmentType);
    var result = await ApiService.removeFromCart(item).catchError(handleError);
    if (result == "1") {
      outCart(true);
    } else {
      outCart(false);
    }
  }

  //remove items from cartList
  removeItems(ProductElement product) {
    //cartList.remove(item);
    cartMap.remove(product);
  }

  updateCart() {}

  //used to handle addition of an item to the cart
  // inCart(ProductElement product, BuildContext context) {
  //   if (cartMap.keys.contains(product)) {
  //     showSimpleFlushbar(context, "Already Added to Cart");
  //   } else {
  //     showSimpleFlushbar(context, "Successfully Added to Cart");
  //     addItems(product);
  //   }
  // }

  //Used to handle the removal of an item from the cart
  checkoutHandler(ProductElement product, BuildContext context) {
    if (checkoutItems.contains(product)) {
      showSimpleFlushbarWithoutButton(context, "Removed From Cart");
      removeItems(product);
      checkoutItems.remove(product);
    } else {
      showSimpleFlushbarWithoutButton(context, "Select an Item");
    }
  }

  //Gets the sum of the items selected for checkout
  sum() {
    double price;
    var sum = 0.0;
    for (var product in checkoutItems) {
      price = double.parse("${product.price}") * cartMap[product];
      sum += price;
      //print("Sum: $sum");
    }
    return sum;
  }

  // selectAll() {
  //   for (var item in cartList) {
  //     if (checkoutItems.contains(item)) {
  //     } else {
  //       checkoutItems.add(item);
  //     }
  //   }
  // }

  removeAll() {
    for (var item in checkoutItems) {
      checkoutItems.remove(item);
    }
  }
}

void showSimpleFlushbar(BuildContext context, String message) {
  Flushbar(
    messageText: Text(
      "$message",
      style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
    ),
    duration: Duration(seconds: 3),
    mainButton: ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.black12,
      ),
      child: Text(
        'Go to Cart',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
      ),
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CartPage(),
        ),
      ),
    ),
    backgroundColor: Colors.orange,
    padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),
    borderRadius: 10.0,
  )..show(context);
}

void showSimpleFlushbarWithoutButton(BuildContext context, String message) {
  Flushbar(
    messageText: Text(
      "$message",
      style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
    ),
    duration: Duration(seconds: 3),
    backgroundColor: Colors.orange,
    padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),
    borderRadius: 10.0,
  )..show(context);
}
