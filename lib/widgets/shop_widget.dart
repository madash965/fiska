import 'dart:io';

import 'package:fiska/pages/shopPage.dart';
import 'package:flutter/material.dart';
import 'package:fiska/controllers/productcontroller.dart';
import 'package:fiska/models/product.dart';
import 'package:fiska/pages/productPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopWidget extends StatelessWidget {
  final ProductElement product;
  const ShopWidget(buildImage, {this.product, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;

    return Center(
      child: Stack(
        children: [
          buildImage(),
          Positioned(
            bottom: 0,
            right: 4,
            child: buildEditIcon(color),
          ),
        ],
      ),
    );
  }

  Widget buildImage() {
    final image = NetworkImage(product.productImageUrl);
    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: Ink.image(
          image: image,
          fit: BoxFit.cover,
          width: 128,
          height: 128,
          child: InkWell(
            onTap: () async {
              //Get.to(() => ShopPage());
            },
          ),
        ),
      ),
    );
  }

  Widget buildEditIcon(Color color) => buildCircle(
        color: Colors.white,
        all: 3,
        child: buildCircle(
          color: color,
          all: 8,
          child: Icon(
            Icons.edit,
            color: Colors.white,
            size: 20,
          ),
        ),
      );

  Widget buildCircle({
    Widget child,
    double all,
    Color color,
  }) =>
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(all),
          color: color,
          child: child,
        ),
      );
}
