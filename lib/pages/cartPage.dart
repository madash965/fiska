import 'package:fiska/controllers/cartcontroller.dart';
import 'package:fiska/models/product.dart';
import 'package:fiska/pages/checkout_page.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  Product product;
  @override
  Widget build(BuildContext context) {
    CartModel cartModel = Get.put<CartModel>(CartModel());
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'Cart',
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
          ),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        actionsIconTheme: IconThemeData(color: Colors.black),
      ),
      body: GetX(
        init: CartModel(),
        builder: (_) {
          return _.items;
        },
      ),
      bottomNavigationBar: Obx(
        () => cartModel.cartList.isEmpty
            ? SizedBox()
            : Container(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                color: Colors.white,
                //margin: EdgeInsets.symmetric(horizontal: 5),
                // decoration: BoxDecoration(
                //   color: Colors.black12,
                //   borderRadius: BorderRadius.horizontal(
                //     left: Radius.circular(10),
                //     right: Radius.circular(10),
                //   ),
                // ),
                height: MediaQuery.of(context).size.height / 13,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SafeArea(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // GetX(
                          //   init: cartModel,
                          //   builder: (_) => Checkbox(
                          //     activeColor: Colors.orange.shade300,
                          //     checkColor: Colors.black,
                          //     value: cartModel.checkoutItems.contains(product),
                          //     onChanged: (value) {
                          //       if (value) {
                          //         cartModel.selectAll();
                          //         print('CheckOutList: ${cartModel.checkoutItems.value}');
                          //         print("Value: $value");
                          //       } else if (!value) {
                          //         cartModel.removeAll();
                          //         print('CheckOutList: ${cartModel.checkoutItems.value}');
                          //       }
                          //     },
                          //   ),
                          // ),
                          Text(
                            "Total: ",
                            style: TextStyle(
                              letterSpacing: 2,
                              color: Colors.orange[700],
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Obx(
                            () => Text(
                              "\$${cartModel.sum()}",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(10),
                          right: Radius.circular(10),
                        ),
                      ),
                      color: Colors.orange.shade300,
                      child: Text(
                        'CheckOut(${cartModel.checkoutItems.length})',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        if (cartModel.checkoutItems.length == 0) {
                          return null;
                        }
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CheckoutPage(
                              price: num.parse(
                                "${cartModel.sum()}",
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
      ),
    );
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
    backgroundColor: Colors.orange,
    padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),
    borderRadius: 10.0,
    maxWidth: 20.0,
  )..show(context);
}
