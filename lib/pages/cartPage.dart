import 'package:eva_icons_flutter/eva_icons_flutter.dart';
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
      // appBar: AppBar(
      //   elevation: 0.0,
      //   title: Text(
      //     'Cart',
      //     style: TextStyle(
      //       color: Colors.black,
      //       fontSize: 28,
      //     ),
      //   ),
      //   backgroundColor: Colors.white,
      //   iconTheme: IconThemeData(color: Colors.black),
      //   actionsIconTheme: IconThemeData(color: Colors.black),
      // ),
      body: SafeArea(
        child: Obx(
          () => cartModel.cartMap.isEmpty
              ? Container(
                  color: Colors.transparent,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          EvaIcons.shoppingCart,
                          size: 40,
                          color: Colors.black,
                        ),
                        Text(
                          'Cart Is Empty',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 37,
                      vertical: MediaQuery.of(context).size.width / 37),
                  color: Colors.black12,
                  child: ListView.separated(
                    itemBuilder: (context, index) => Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.height / 70,
                        vertical: MediaQuery.of(context).size.height / 70,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: orderDetails(index, context),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: orderOptions(index, context),
                          ),
                        ],
                      ),
                    ),
                    separatorBuilder: (context, index) => Container(
                      height: MediaQuery.of(context).size.height / 50,
                      color: Colors.transparent,
                    ),
                    itemCount: cartModel.cartMap.length,
                  ),
                ),
        ),
      ),
      bottomNavigationBar: Obx(
        () => cartModel.cartMap.isEmpty
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
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange.shade300,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(10),
                            right: Radius.circular(10),
                          ),
                        ),
                      ),
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

List<Widget> orderDetails(int index, BuildContext context) {
  CartModel cartModel = Get.put<CartModel>(CartModel());
  var product = cartModel.cartMap.keys.elementAt(index);
  return [
    Obx(
      () => Checkbox(
        activeColor: Colors.orange[300],
        checkColor: Colors.black,
        value: cartModel.checkoutItems.contains(product),
        onChanged: (value) {
          if (value) {
            cartModel.checkoutItems.add(product);
          } else {
            cartModel.checkoutItems.remove(product);
          }
        },
      ),
    ),
    Container(
      width: MediaQuery.of(context).size.width / 3.2,
      child: Image.asset(
        "${product.image}",
        fit: BoxFit.fill,
      ),
    ),
    Container(
      width: MediaQuery.of(context).size.width / 2.3,
      padding: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            '${product.description}',
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            '\$${product.price}',
            overflow: TextOverflow.ellipsis,
            //maxLines: 2,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    )
  ];
}

List<Widget> orderOptions(int index, BuildContext context) {
  CartModel cartModel = Get.put<CartModel>(CartModel());
  var product = cartModel.cartMap.keys.elementAt(index);
  return [
    IconButton(
      icon: Icon(EvaIcons.heartOutline),
      color: Colors.black,
      onPressed: () {},
    ),
    SizedBox(
      width: MediaQuery.of(context).size.width / 20,
    ),
    ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        primary: Colors.orange.shade300,
      ),
      icon: Icon(
        EvaIcons.trash,
        color: Colors.red,
      ),
      label: Text(
        'Remove From Cart',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      onPressed: () {
        cartModel.checkoutHandler(product, context);
      },
    ),
  ];
}
