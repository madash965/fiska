import 'package:fiska/controllers/productcontroller.dart';
import 'package:fiska/models/product.dart';
import 'package:fiska/pages/productPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductCard extends StatelessWidget {
  final ProductElement product;
  const ProductCard({this.product, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductController _productController = Get.find<ProductController>();
    return InkWell(
      onTap: () async {
        Get.to(() => ProductPage(product: product));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        elevation: 2,
        child: Stack(
          children: <Widget>[
            Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Expanded(
                    child: Hero(
                      tag: product.productImageUrl,
                      child: AspectRatio(
                        aspectRatio: 1 / 1,
                        child: Image(
                          fit: BoxFit.contain,
                          image: NetworkImage(product.productImageUrl),
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 3.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      product.productName,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "\N\G\N${product.theprice}",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.amber[900],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: -2.0,
              right: -3.0,
              child: Card(
                color: Colors.amber[200],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0)),
                child: Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        '-70%',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
