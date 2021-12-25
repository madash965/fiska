import 'package:fiska/controllers/productcontroller.dart';
import 'package:fiska/models/product.dart';
import 'package:fiska/pages/productPage.dart';
import 'package:fiska/pages/shopPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopCard extends StatelessWidget {
  final ProductElement product;
  const ShopCard({this.product, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductController _productController = Get.find<ProductController>();
    return InkWell(
      onTap: () async {
        //Get.to(() => ProductPage(product: product));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(6),
          ),
        ),
        elevation: 2,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Expanded(
              child: Hero(
                tag: product.productImageUrl,
                child: Image(
                  height: 240,
                  width: 250,
                  fit: BoxFit.cover,
                  image: NetworkImage(product.productImageUrl),
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () async {
                  Get.to(() => ShopPage(buildImage()));
                },
                child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey.shade100,
                    backgroundImage: NetworkImage(product.productImageUrl)),
              ),
            ),
            Positioned(
              top: 3.0,
              //bottom: 1.0,
              right: 6.0,
              left: 6.0,
              child: Text(
                'HAMIR INVESTMENT',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
