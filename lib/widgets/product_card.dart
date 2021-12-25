import 'package:cached_network_image/cached_network_image.dart';
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
            Radius.circular(6),
          ),
        ),
        elevation: 3,
        child: Stack(
          children: <Widget>[
            Container(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    child: Hero(
                      tag: product.productImageUrl,
                      child: CachedNetworkImage(
                        placeholder: (context, url) =>
                            Center(child: placeholderImage()),
                        imageUrl: product.productImageUrl,
                        height: double.infinity,
                        width: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 6),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      product.productName,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[700],
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.0),
                        child: Row(
                          children: [
                            Text(
                              "\N\G\N ",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "${product.theprice}",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '1200 ' ' Sold',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[700],
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.orangeAccent,
                            size: 20.0,
                          ),
                          Text('4.4k'),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ),
            Positioned(
              top: -4.0,
              right: -4.0,
              child: Card(
                color: Colors.red[600],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.0, vertical: 3.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        '-70%',
                        style: TextStyle(
                            color: Colors.white,
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

Widget placeholderImage() {
  final image = AssetImage('assets/grayscale_transparent.png');
  return Container(
    height: 60,
    width: 60,
    padding: const EdgeInsets.all(3.0),
    decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
    child: ClipOval(
      child: Material(
        color: Colors.transparent,
        child: Ink.image(
          image: image,
          fit: BoxFit.cover,
          width: 60,
          height: 60,
          child: InkWell(
            onTap: () async {
              //Get.to(() => ShopPage());
            },
          ),
        ),
      ),
    ),
  );
}
