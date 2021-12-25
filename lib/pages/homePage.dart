import 'package:badges/badges.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:fiska/controllers/authController.dart';
import 'package:fiska/controllers/cartcontroller.dart';
import 'package:fiska/controllers/productcontroller.dart';
<<<<<<< HEAD
import 'package:fiska/models/product.dart';
import 'package:fiska/pages/reviews.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:fiska/pages/categoryPage.dart';
=======
import 'package:fiska/models/product_detail.dart';
import 'package:fiska/pages/profile_related/authentication.dart';
>>>>>>> 73272c3244dc7be6b3f2d4dc287ac0c4af210a41
import 'package:fiska/widgets/product_card.dart';
import 'package:fiska/widgets/shimmer_loading.dart';
import 'package:fiska/widgets/shop_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fiska/pages/profilePage.dart';
import 'package:fiska/widgets/categoryItem.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:floating_navigation_bar/floating_navigation_bar.dart';
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
<<<<<<< HEAD
  Data data;
=======
>>>>>>> 73272c3244dc7be6b3f2d4dc287ac0c4af210a41

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

  Future<void> _handleRefresh() async {
    return await Future.delayed(Duration(seconds: 2));
  }

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
          "WeKasuwa",
          style: TextStyle(
            color: Colors.orange[800],
            fontSize: 22.0,
            fontFamily: "poppins",
            fontWeight: FontWeight.bold,
            letterSpacing: 4.0,
          ),
          //textAlign: TextAlign.left,
        ),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 1,
        actionsIconTheme: IconThemeData(color: Colors.orange),
        iconTheme: IconThemeData(color: Colors.orange),
        actions: <Widget>[
          IconButton(
<<<<<<< HEAD
              icon: Icon(
                Icons.search,
                size: 30,
              ),
=======
              icon: Icon(Icons.search),
>>>>>>> 73272c3244dc7be6b3f2d4dc287ac0c4af210a41
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
            color: Colors.grey[200],
            child: LiquidPullToRefresh(
              onRefresh: _handleRefresh,
              color: Colors.orange[800],
              height: 100,
              backgroundColor: Colors.deepOrange[200],
              animSpeedFactor: 2,
              showChildOpacityTransition: false,
              child: ListView(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                  ),
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                CategoryItem(
                                  icon: EvaIcons.list,
                                  size: 58,
                                  margin: EdgeInsets.only(
                                    left: 10,
                                  ),
                                  padding: EdgeInsets.all(2),
                                  backgroundColor: Colors.red,
                                  onPressed: () {
                                    Get.to(() => CategoryPage());
                                  },
                                ),
                                SizedBox(height: 5.0),
                                Container(
                                  child: Text('Categories'),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                CategoryItem(
                                  icon: EvaIcons.phone,
                                  size: 58,
                                  margin: EdgeInsets.only(
                                    left: 10,
                                  ),
                                  padding: EdgeInsets.all(2),
                                  backgroundColor: Color(0xFF91bfff),
                                  onPressed: () {
                                    Get.to(() => Reviews());
                                  },
                                ),
                                SizedBox(height: 5.0),
                                Container(
                                  child: Text(
                                    'Phones',
                                    maxLines: 1,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                CategoryItem(
                                  icon: EvaIcons.hardDriveOutline,
                                  size: 58,
                                  margin: EdgeInsets.only(
                                    left: 10,
                                  ),
                                  padding: EdgeInsets.all(2),
                                  backgroundColor: Color(0xFFff91c1),
                                  onPressed: () {},
                                ),
                                SizedBox(height: 5.0),
                                Container(
                                  child: Text('Accessories'),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                CategoryItem(
                                  icon: EvaIcons.printerOutline,
                                  size: 58,
                                  margin: EdgeInsets.only(
                                    left: 10,
                                  ),
                                  padding: EdgeInsets.all(2),
                                  backgroundColor: Color(0xFF5340de),
                                  onPressed: () {},
                                ),
                                SizedBox(height: 5.0),
                                Container(
                                  child: Text('Computers'),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Column(
                              children: [
                                CategoryItem(
                                  icon: EvaIcons.umbrellaOutline,
                                  size: 58,
                                  margin: EdgeInsets.only(
                                    left: 10,
                                  ),
                                  padding: EdgeInsets.all(2),
                                  backgroundColor: Color(0xFFff788e),
                                  onPressed: () {},
                                ),
                                SizedBox(height: 5.0),
                                Container(
                                  child: Text('Caps'),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                CategoryItem(
                                  icon: EvaIcons.tvOutline,
                                  size: 58,
                                  margin: EdgeInsets.only(
                                    left: 10,
                                  ),
                                  padding: EdgeInsets.all(2),
                                  backgroundColor: Color(0xFFff9378),
                                  onPressed: () {},
                                ),
                                SizedBox(height: 5.0),
                                Container(
                                  child: Text('Cinema'),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                CategoryItem(
                                  icon: EvaIcons.videoOutline,
                                  size: 58,
                                  margin: EdgeInsets.only(
                                    left: 10,
                                  ),
                                  padding: EdgeInsets.all(2),
                                  backgroundColor: Color(0xFF47e6a9),
                                  onPressed: () {},
                                ),
                                SizedBox(height: 5.0),
                                Container(
                                  child: Text('Media'),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                CategoryItem(
                                  icon: EvaIcons.settings2,
                                  size: 58,
                                  margin: EdgeInsets.only(
                                    left: 10,
                                  ),
                                  padding: EdgeInsets.all(2),
                                  backgroundColor: Color(0xFFff788e),
                                  onPressed: () {},
                                ),
                                SizedBox(height: 5.0),
                                Container(
                                  child: Text('Services'),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 10,
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
                              borderRadius: BorderRadius.circular(10),
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
                    height: 10.0,
                  ),

                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.purpleAccent, Colors.purple],
                          begin: Alignment.topRight,
                          end: Alignment.centerLeft),
                      //borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "MarketPlace",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 300,
                    // decoration: BoxDecoration(
                    //   gradient: LinearGradient(
                    //       colors: [Colors.purpleAccent, Colors.purple],
                    //       begin: Alignment.topCenter,
                    //       end: Alignment.bottomCenter),
                    //   //borderRadius: BorderRadius.circular(15.0),
                    // ),
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: SizedBox(
                        height: 380,
                        child: Obx(
                          () {
                            try {
                              if (productController.isLoading.value) {
                                return Center(
                                  child: ShimmerLoading(),
                                );
                              } else {
                                return GridView.builder(
                                  //padding: EdgeInsets.only(left: 3.0),
                                  scrollDirection: Axis.horizontal,
                                  //shrinkWrap: true,
                                  itemCount:
                                      productController.productList.length,
                                  itemBuilder: (context, index) => ShopCard(
                                    product:
                                        productController.productList[index],
                                  ),
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2),
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
                    ),
                  ),

                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.orangeAccent, Colors.deepOrange],
                          begin: Alignment.topRight,
                          end: Alignment.topCenter),
                      //borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Hot Deals",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: SizedBox(
                        height: 200,
                        child: Obx(
                          () {
                            try {
                              if (productController.isLoading.value) {
                                return Center(
                                  child: ShimmerLoading(),
                                );
                              } else {
                                return ListView.builder(
                                  //padding: EdgeInsets.only(left: 3.0),
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemCount:
                                      productController.productList.length,
                                  itemBuilder: (context, index) => ProductCard(
                                    product:
                                        productController.productList[index],
                                  ),
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
                    ),
                  ),
                  SizedBox(height: 10.0),

                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.cyanAccent, Colors.cyan],
                          begin: Alignment.topRight,
                          end: Alignment.topLeft),
                      //borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Top Products",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
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
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
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
<<<<<<< HEAD
=======
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
>>>>>>> 73272c3244dc7be6b3f2d4dc287ac0c4af210a41

                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.greenAccent, Colors.green],
                          begin: Alignment.topRight,
                          end: Alignment.topLeft),
                      //borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Most Popular Products",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),

                  Container(
                    // decoration: BoxDecoration(
                    //   gradient: LinearGradient(
                    //       colors: [Colors.lightGreen, Colors.grey[100]],
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
                            return StaggeredGridView.countBuilder(
                              itemCount: productController.productList.length,
                              crossAxisCount: 2,
                              staggeredTileBuilder: (int index) =>
                                  index % 2 == 0
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
                              "Not Found",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 30,
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
          ),
        ),
        CartPage(),
        !authController.isAuthenticated.value
            ? Authentication()
            : ProfilePage(),
      ].elementAt(_page),
// bottom Nav
<<<<<<< HEAD
      bottomNavigationBar: FloatingNavigationBar(
        backgroundColor: Colors.orange[800],
        barHeight: 65.0,
        indicatorColor: Colors.white,
        iconColor: Colors.white,
        textStyle: TextStyle(
          color: Colors.white,
          fontSize: 14.0,
        ),
        iconSize: 20.0,
        items: [
          NavBarItems(icon: EvaIcons.homeOutline, title: "Home"),
          NavBarItems(icon: EvaIcons.shoppingCartOutline, title: "Cart"),
          NavBarItems(icon: EvaIcons.person, title: "Profile"),
          //NavBarItems(icon: EvaIcons.activity, title: "Profile"),
        ],
        onChanged: (int index) {
          setState(() => _page = index);
        },
=======
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
>>>>>>> 73272c3244dc7be6b3f2d4dc287ac0c4af210a41
      ),
    );
  }
}

// bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         elevation: 10.0,
//         currentIndex: _page,
//         backgroundColor: Colors.white,
//         selectedItemColor: Colors.orange,
//         unselectedItemColor: Colors.black,
//         iconSize: 25,
//         selectedFontSize: 15,
//         unselectedFontSize: 10,
//         showUnselectedLabels: false,
//         // selectedLabelStyle: textTheme.caption,
//         // unselectedLabelStyle: textTheme.caption,
//         onTap: (int index) {
//           // Respond to item press.
//           setState(() => _page = index);
//         },
//         items: [
//           BottomNavigationBarItem(
//             label: 'Home',
//             icon: Icon(Icons.home),
//           ),
//           BottomNavigationBarItem(
//             label: 'Cart',
//             icon: Icon(Icons.shopping_cart),
//           ),
//           BottomNavigationBarItem(
//             label: 'Profile',
//             icon: Icon(Icons.person),
//           ),
//         ],
//       ),

//  bottomNavigationBar: FloatingNavbar(
//         backgroundColor: Colors.orange[800],
//         selectedItemColor: Colors.orange[800],
//         onTap: (int val) => setState(() => _page = val),
//         currentIndex: _page,
//         items: [
//           FloatingNavbarItem(icon: Icons.home, title: 'Home'),
//           FloatingNavbarItem(icon: Icons.shopping_cart, title: 'Cart'),
//           FloatingNavbarItem(icon: Icons.person, title: 'Profile'),
//           //FloatingNavbarItem(icon: Icons.settings, title: 'Settings'),
//         ],
//       ),
