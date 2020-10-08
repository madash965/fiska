import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:fiska/models/product.dart';
import 'package:fiska/pages/cartPage.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartModel extends GetxController {
  final cartList = [].obs;
  final checkoutItems = [].obs;

  // handles the view of the cart items
  get items {
    CartModel cartModel = Get.put(CartModel());
    return cartList.isEmpty
        ? Container(
            color: Colors.white,
            child: Center(
              child: Text(
                'Cart Is Empty',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        : ListView.separated(
            itemBuilder: (_, index) => Container(
              margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.black12,
              ),
              padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      GetX(
                        init: cartModel,
                        builder: (_) => Checkbox(
                          activeColor: Colors.orange.shade300,
                          checkColor: Colors.black,
                          value: checkoutItems.contains(cartList[index]),
                          onChanged: (value) {
                            if (value) {
                              checkoutItems.add(cartList[index]);
                            } else {
                              checkoutItems.remove(cartList[index]);
                            }
                          },
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              width: MediaQuery.of(_).size.width / 3.5,
                              child: Image.asset(
                                "${cartList[index].image}",
                                fit: BoxFit.contain,
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              width: MediaQuery.of(_).size.width / 1.9,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${cartList[index].description}',
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      '\$${cartList[index].price}',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 5, 15, 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          icon: Icon(EvaIcons.heartOutline),
                          color: Colors.black,
                          onPressed: () {},
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Builder(
                          builder: (_) => RaisedButton.icon(
                            icon: Icon(
                              EvaIcons.trash,
                              color: Colors.red,
                            ),
                            label: Text('Remove From Cart'),
                            color: Colors.orange.shade300,
                            onPressed: () {
                              cartModel.addToCheckout(cartList[index], _);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            separatorBuilder: (_, index) => Container(
              height: MediaQuery.of(_).size.height / 50,
              color: Colors.transparent,
            ),
            itemCount: cartList.length,
          );
  }

  //add items to cartList
  addItems(Product item) {
    cartList.add(item);
  }

  //remove items from cartList
  removeItems(Product item) {
    cartList.remove(item);
  }

  //used to handle addition of an item to the cart
  inCart(Product item, BuildContext context) {
    if (cartList.contains(item)) {
      showSimpleFlushbar(context, "Already Added to Cart");
    } else {
      showSimpleFlushbar(context, "Successfully Added to Cart");
      addItems(item);
    }
  }

  //Used to handle the removal of an item from the cart
  addToCheckout(Product item, BuildContext context) {
    if (checkoutItems.contains(item)) {
      showSimpleFlushbarWithoutButton(context, "Removed From Cart");
      removeItems(item);
      checkoutItems.remove(item);
    } else {
      showSimpleFlushbarWithoutButton(context, "Select an Item");
    }
  }

  //Gets the sum of the items selected for checkout
  sum() {
    double price;
    var sum = 0.0;
    for (var item in checkoutItems) {
      price = double.parse("${item.price}");
      sum += price;
      //print("Sum: $sum");
    }
    return sum;
  }

  selectAll() {
    for (var item in cartList) {
      if (checkoutItems.contains(item)) {
      } else {
        checkoutItems.add(item);
      }
    }
  }

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
    mainButton: RaisedButton(
      child: Text(
        'Go to Cart',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
      ),
      color: Colors.black12,
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
