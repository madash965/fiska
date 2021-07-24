import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:fiska/controllers/cartcontroller.dart';
import 'package:fiska/models/product.dart';
import 'package:fiska/pages/cartPage.dart';
import 'package:fiska/pages/checkout_page.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

import 'SearchPage.dart';

class ProductPage extends StatelessWidget {
  final Product product;

  ProductPage({this.product});

  @override
  Widget build(BuildContext context) {
    CartModel _cartModel = Get.put(CartModel());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Details',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        actionsIconTheme: IconThemeData(color: Colors.black),
        iconTheme: IconThemeData(color: Colors.orange),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                showSearch(context: context, delegate: ProductSearchDelegate());
              },
              child: Icon(
                Icons.search,
                size: 26.0,
                color: Colors.orange,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CartPage(),
                  ),
                );
              },
              child: Icon(
                Icons.shopping_cart,
                color: Colors.orange,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Hero(
                tag: product.image,
                child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: Image(
                    image: AssetImage(product.image),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                ),
                child: ListTile(
                  title: Text('Seller'),
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 1,
                ),
                child: Text(
                  product.productName,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                child: Text(
                  "\$${product.price}",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                    color: Colors.amber,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                child: Text(
                  'Coupons',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 0,
                ),
                child: Text(
                  product.description,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Row(
                  children: [
                    Text('Colors'),
                    //The code for the variants should be written here
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Text(
                  'Reviews',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 0,
                  ),
                  child: RatingBar(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    ratingWidget: RatingWidget(
                      empty: Icon(
                        Icons.star,
                        color: Colors.grey,
                      ),
                      half: Icon(
                        Icons.star,
                        color: Colors.grey,
                      ),
                      full: Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  )),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: OutlinedButton.icon(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
                label: Text(
                  "Cart",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onPressed: () {
                  _cartModel.inCart(product, context);
                },
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber,
                ),
                icon: Icon(
                  EvaIcons.creditCard,
                  color: Colors.black,
                ),
                label: Text(
                  "Buy Now",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => CheckoutPage(
                        price: num.parse(product.price),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
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
