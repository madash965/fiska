import 'package:badges/badges.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:fiska/controllers/authController.dart';
import 'package:fiska/controllers/cartcontroller.dart';
import 'package:fiska/controllers/productcontroller.dart';
import 'package:fiska/models/product_detail.dart';
import 'package:fiska/pages/profile_related/authentication.dart';
import 'package:fiska/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fiska/pages/profilePage.dart';
import 'package:fiska/widgets/categoryItem.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import 'SearchPage.dart';
import 'cartPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AuthController authController = Get.put<AuthController>(AuthController());
  ProductController productController = Get.put(ProductController());
  int _page = 0;

  List bannerAdSlider = [
    "assets/banner1.jpg",
    "assets/banner2.jpg",
    "assets/banner3.jpg",
    "assets/banner4.jpg",
    "assets/banner5.jpg",
    "assets/banner6.jpg",
    "assets/banner7.jpg",
    "assets/banner8.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    CartController cartModel = Get.put<CartController>(CartController());

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          "FISKA",
          style: TextStyle(
            color: Colors.orange[800],
            fontSize: 27.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 4.0,
          ),
          //textAlign: TextAlign.left,
        ),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        actionsIconTheme: IconThemeData(color: Colors.orange),
        iconTheme: IconThemeData(color: Colors.orange),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () async {
                showSearch(context: context, delegate: ProductSearchDelegate());
              }),
          Obx(
            () => Padding(
              padding: EdgeInsets.only(right: 15),
              child: Badge(
                padding: EdgeInsets.all(2.5),
                shape: BadgeShape.circle,
                borderRadius: BorderRadius.circular(3),
                badgeContent: Text(
                  '${cartModel.cartMap.length}',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                position: BadgePosition.topEnd(top: 5, end: 4),
                animationDuration: Duration(milliseconds: 300),
                animationType: BadgeAnimationType.slide,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_cart,
                    size: 26,
                    color: Colors.orange,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      // drawerEdgeDragWidth: 0,
      // drawer: Drawer(
      //   child: ListView(
      //     children: <Widget>[
      //       UserAccountsDrawerHeader(
      //         decoration: BoxDecoration(
      //           color: Colors.orange,
      //           borderRadius: BorderRadius.circular(2.0),
      //         ),
      //         accountEmail: Text(
      //           "Fiska@gmail.com",
      //           style: TextStyle(
      //             color: Colors.black,
      //           ),
      //         ),
      //         accountName: Text(
      //           "Fiska",
      //           style: TextStyle(
      //             color: Colors.black,
      //           ),
      //         ),
      //         currentAccountPicture: ClipRRect(
      //           borderRadius: BorderRadius.circular(70),
      //           child: Image(
      //             image: AssetImage('assets/logo.png'),
      //             width: 70,
      //             height: 70,
      //             fit: BoxFit.cover,
      //           ),
      //         ),
      //       ),
      //       SizedBox(height: 10),
      //       ListTile(
      //         title: Text("Account"),
      //         leading: Icon(EvaIcons.personOutline),
      //         onTap: () {},
      //       ),
      //       SizedBox(height: 10),
      //       ListTile(
      //         title: Text("Categories"),
      //         leading: Icon(Icons.list),
      //         onTap: () {},
      //       ),
      //       SizedBox(height: 10),
      //       ListTile(
      //         title: Text("Sevices"),
      //         leading: Icon(Icons.live_help),
      //         onTap: () {},
      //       ),
      //       SizedBox(height: 10),
      //       ListTile(
      //         title: Text("Help"),
      //         leading: Icon(EvaIcons.bulbOutline),
      //         onTap: () {},
      //       ),
      //       SizedBox(height: 10),
      //       ListTile(
      //         title: Text("Become a Seller",
      //             style: TextStyle(color: Colors.red)),
      //         leading: Icon(
      //           EvaIcons.shoppingCartOutline,
      //           color: Colors.red,
      //         ),
      //         onTap: () {},
      //       ),
      //       SizedBox(height: 20),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: ClipRRect(
      //           borderRadius: BorderRadius.circular(16),
      //           child: AspectRatio(
      //             aspectRatio: 16 / 4,
      //             child: Image.asset(
      //               "assets/banner8.jpg",
      //               fit: BoxFit.cover,
      //             ),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      body: [
        SafeArea(
          child: Container(
            color: Colors.grey[100],
            child: ListView(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Categories",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 70,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: <Widget>[
                      CategoryItem(
                        icon: EvaIcons.giftOutline,
                        size: 70,
                        margin: EdgeInsets.only(
                          left: 10,
                        ),
                        padding: EdgeInsets.all(10),
                        backgroundColor: Color(0xFFffe291),
                        onPressed: () {},
                      ),
                      CategoryItem(
                        icon: EvaIcons.headphonesOutline,
                        size: 70,
                        margin: EdgeInsets.only(
                          left: 10,
                        ),
                        padding: EdgeInsets.all(10),
                        backgroundColor: Color(0xFF91bfff),
                        onPressed: () {},
                      ),
                      CategoryItem(
                        icon: EvaIcons.hardDriveOutline,
                        size: 70,
                        margin: EdgeInsets.only(
                          left: 10,
                        ),
                        padding: EdgeInsets.all(10),
                        backgroundColor: Color(0xFFff91c1),
                        onPressed: () {},
                      ),
                      CategoryItem(
                        icon: EvaIcons.printerOutline,
                        size: 70,
                        margin: EdgeInsets.only(
                          left: 10,
                        ),
                        padding: EdgeInsets.all(10),
                        backgroundColor: Color(0xFF5340de),
                        onPressed: () {},
                      ),
                      CategoryItem(
                        icon: EvaIcons.videoOutline,
                        size: 70,
                        margin: EdgeInsets.only(
                          left: 10,
                        ),
                        padding: EdgeInsets.all(10),
                        backgroundColor: Color(0xFF47e6a9),
                        onPressed: () {},
                      ),
                      CategoryItem(
                        icon: EvaIcons.umbrellaOutline,
                        size: 70,
                        margin: EdgeInsets.only(
                          left: 10,
                        ),
                        padding: EdgeInsets.all(10),
                        backgroundColor: Color(0xFFff788e),
                        onPressed: () {},
                      ),
                      CategoryItem(
                        icon: EvaIcons.tvOutline,
                        size: 70,
                        margin: EdgeInsets.only(
                          left: 10,
                        ),
                        padding: EdgeInsets.all(10),
                        backgroundColor: Color(0xFFff9378),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 30,
                ),
                // banner ad slider

                CarouselSlider(
                  options: CarouselOptions(
                    aspectRatio: 16 / 7,
                    autoPlay: true,
                  ),
                  items: bannerAdSlider.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 2.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image(
                              image: AssetImage(i),
                              fit: BoxFit.cover,
                              alignment: Alignment.topCenter,
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),

                // banner ad slider

                SizedBox(
                  height: 20,
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Products",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(
                  height: 3.0,
                ),
                SizedBox(
                  height: 8,
                ),

                Obx(
                  () {
                    try {
                      if (productController.isLoading.value) {
                        return Center(
                          child: CircularProgressIndicator(
                            color: Colors.orange[300],
                          ),
                        );
                      } else {
                        return StaggeredGridView.countBuilder(
                          itemCount: productController.productList.length,
                          crossAxisCount: 2,
                          staggeredTileBuilder: (int index) => index % 2 == 0
                              ? StaggeredTile.count(1, 1.5)
                              : StaggeredTile.count(1, 1),
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
                          "Yellow",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 30,
                          ),
                        ),
                      );
                    }
                  },
                ),

                SizedBox(
                  height: 8,
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Top Products",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
        CartPage(),
        !authController.isAuthenticated.value
            ? Authentication()
            : ProfilePage(),
      ].elementAt(_page),
// bottom Nav
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _page,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        iconSize: 25,
        selectedFontSize: 15,
        unselectedFontSize: 10,
        showUnselectedLabels: false,
        // selectedLabelStyle: textTheme.caption,
        // unselectedLabelStyle: textTheme.caption,
        onTap: (int index) {
          // Respond to item press.
          setState(() => _page = index);
        },
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Cart',
            icon: Icon(Icons.shopping_cart),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
