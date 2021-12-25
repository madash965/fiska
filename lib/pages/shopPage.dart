import 'package:fiska/models/product.dart';
import 'package:fiska/widgets/shoptabbar_widget.dart';
import 'package:fiska/widgets/shop_appBar.dart';
import 'package:flutter/material.dart';
import 'package:fiska/widgets/shop_widget.dart';
import 'package:fiska/widgets/product_card.dart';
import 'package:fiska/widgets/shimmer_loading.dart';
import 'package:fiska/widgets/shop_card.dart';
import 'package:fiska/controllers/productcontroller.dart';
import 'package:fiska/models/product.dart';
import 'package:fiska/controllers/productcontroller.dart';
import 'package:fiska/pages/shopPage.dart';
import 'package:get/get.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class ShopPage extends StatelessWidget {
  final ProductElement product;
  ProductController productController = Get.put(ProductController());
  Data data;
  ShopPage(buildImage, {this.product, Key key}) : super(key: key);

  Future<void> _handleRefresh() async {
    return await Future.delayed(Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidPullToRefresh(
        onRefresh: _handleRefresh,
        color: Colors.orange[800],
        height: 100,
        backgroundColor: Colors.deepOrange[200],
        animSpeedFactor: 2,
        showChildOpacityTransition: false,
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Container(
                padding: EdgeInsets.all(8.0),
                child: Center(
                  child: Stack(
                    children: [
                      buildImage(),
                      Positioned(
                        bottom: 0,
                        right: 4,
                        child: buildEditIcon(Colors.blue),
                      ),
                    ],
                  ),
                )),
            const SizedBox(height: 24),
            Center(
                child: Text('Hamir Investment',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),
            const SizedBox(height: 10),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Location',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Icon(
                    Icons.location_on,
                    color: Colors.blue,
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            const SizedBox(height: 10),
            ShopTabBar(),
            const SizedBox(height: 6),
            Divider(height: 1.0, thickness: 3.0),
            Container(
              // decoration: BoxDecoration(
              //   gradient: LinearGradient(
              //       colors: [Colors.cyan, Colors.white],
              //       begin: Alignment.topCenter,
              //       end: Alignment.bottomCenter),
              //   //borderRadius: BorderRadius.circular(15.0),
              // ),
              child: Obx(
                () {
                  try {
                    if (productController.isLoading.value) {
                      return Center(child: ShimmerLoading());
                    } else {
                      return GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                        itemCount: productController.productList.length,
                        itemBuilder: (context, index) => ProductCard(
                          product: productController.productList[index],
                        ),
                        padding: EdgeInsets.all(4.0),
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                      );
                    }
                  } catch (e) {
                    return Center(
                      child: Text(
                        "Not Found",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildImage() {
  final image = NetworkImage(
      'https://d5nunyagcicgy.cloudfront.net/external_assets/hero_examples/hair_beach_v391182663/original.jpeg');
  return Container(
    height: 150,
    width: 150,
    padding: const EdgeInsets.all(3.0),
    decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
    child: ClipOval(
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
