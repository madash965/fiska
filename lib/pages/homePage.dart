import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:fiska/models/product.dart';
import 'package:fiska/pages/profilePage.dart';
import 'package:fiska/widgets/categoryItem.dart';
import 'package:fiska/pages/productPage.dart';
import 'package:fiska/pages/categoryPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'SearchPage.dart';
import 'cartPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

  List<Product> products = [
    Product(
        image: "assets/product1.jpg",
        description: "This is dummy data for Fiska eCommerce application",
        price: "900",
        productName: "iPad mini"),
    Product(
        image: "assets/product2.jpg",
        description: "This is dummy data for Fiska eCommerce application.",
        price: "700",
        productName: "iPad Pro"),
    Product(
        image: "assets/product3.jpg",
        description: "This is dummy data for Fiska eCommerce application",
        price: "800",
        productName: "iPhone Pro Max"),
    Product(
        image: "assets/product4.jpg",
        description: "This is dummy data for Fiska eCommerce application.",
        price: "90",
        productName: "Apple Watch Series 3"),
    Product(
        image: "assets/product5.jpg",
        description: "This is dummy data for Fiska eCommerce application.",
        price: "500",
        productName: "Apple Watch Series 4"),
    Product(
        image: "assets/product6.jpg",
        description: "This is dummy data for Fiska eCommerce application.",
        price: "100",
        productName: "Macbook Pro 16 inch"),
    Product(
        image: "assets/product7.jpg",
        description: "This is dummy data for Fiska eCommerce application.",
        price: "200",
        productName: "Macbook Pro"),
    Product(
        image: "assets/product8.jpg",
        description: "This is dummy data for Fiska eCommerce application",
        price: "1000",
        productName: "iMac 4k Retina"),
    Product(
        image: "assets/product9.jpg",
        description: "This is dummy data for Fiska eCommerce application",
        price: "150",
        productName: "T-Shirts"),
    Product(
        image: "assets/product10.jpg",
        description: "This is dummy data for Fiska eCommerce application",
        price: "100",
        productName: "Ethnic Wear - Dress"),
    Product(
        image: "assets/product11.jpg",
        description: "This is dummy data for Fiska eCommerce application.",
        price: "100",
        productName: "Dress"),
    Product(
        image: "assets/product12.jpg",
        description: "This is dummy data for Fiska eCommerce application.",
        price: "100",
        productName: "T-Shirt"),
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

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Fiska",
            style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 5.0),
          ),
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          elevation: 0,
          actionsIconTheme: IconThemeData(color: Colors.deepOrange),
          iconTheme: IconThemeData(color: Colors.deepOrange),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(EvaIcons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(EvaIcons.shoppingBagOutline),
            ),
          ],
        ),
        drawerEdgeDragWidth: 0,
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(2.0),
                ),
                accountEmail: Text(
                  "Fiska@gmail.com",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                accountName: Text(
                  "Fiska",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(70),
                  child: Image(
                    image: AssetImage('assets/logo.png'),
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                title: Text("Account"),
                leading: Icon(EvaIcons.personOutline),
              ),
              SizedBox(height: 10),
              ListTile(
                title: Text("Categories"),
                leading: Icon(Icons.list),
              ),
              SizedBox(height: 10),
              ListTile(
                title: Text("Sevices"),
                leading: Icon(Icons.live_help),
              ),
              SizedBox(height: 10),
              ListTile(
                title: Text("Help"),
                leading: Icon(EvaIcons.bulbOutline),
              ),
              SizedBox(height: 10),
              ListTile(
                title: Text("Become a Seller",
                    style: TextStyle(color: Colors.red)),
                leading: Icon(
                  EvaIcons.shoppingCartOutline,
                  color: Colors.red,
                ),
                onTap: () {},
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: AspectRatio(
                    aspectRatio: 16 / 4,
                    child: Image.asset(
                      "assets/banner8.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: [
          Container(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Categories",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                        ),
                        CategoryItem(
                          icon: EvaIcons.headphonesOutline,
                          size: 70,
                          margin: EdgeInsets.only(
                            left: 10,
                          ),
                          padding: EdgeInsets.all(10),
                          backgroundColor: Color(0xFF91bfff),
                        ),
                        CategoryItem(
                          icon: EvaIcons.hardDriveOutline,
                          size: 70,
                          margin: EdgeInsets.only(
                            left: 10,
                          ),
                          padding: EdgeInsets.all(10),
                          backgroundColor: Color(0xFFff91c1),
                        ),
                        CategoryItem(
                          icon: EvaIcons.printerOutline,
                          size: 70,
                          margin: EdgeInsets.only(
                            left: 10,
                          ),
                          padding: EdgeInsets.all(10),
                          backgroundColor: Color(0xFF5340de),
                        ),
                        CategoryItem(
                          icon: EvaIcons.videoOutline,
                          size: 70,
                          margin: EdgeInsets.only(
                            left: 10,
                          ),
                          padding: EdgeInsets.all(10),
                          backgroundColor: Color(0xFF47e6a9),
                        ),
                        CategoryItem(
                          icon: EvaIcons.umbrellaOutline,
                          size: 70,
                          margin: EdgeInsets.only(
                            left: 10,
                          ),
                          padding: EdgeInsets.all(10),
                          backgroundColor: Color(0xFFff788e),
                        ),
                        CategoryItem(
                          icon: EvaIcons.tvOutline,
                          size: 70,
                          margin: EdgeInsets.only(
                            left: 10,
                          ),
                          padding: EdgeInsets.all(10),
                          backgroundColor: Color(0xFFff9378),
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
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                    ),
                    items: bannerAdSlider.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 2.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
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
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  GridView.count(
                    padding: EdgeInsets.all(4.0),
                    physics: ClampingScrollPhysics(),
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    childAspectRatio: 1 / 1.30,
                    children: products.map((product) {
                      return Stack(
                        children: <Widget>[
                          Container(
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  child: Hero(
                                    tag: product.image,
                                    child: AspectRatio(
                                      aspectRatio: 1 / 1,
                                      child: Image(
                                        image: AssetImage(product.image),
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  product.productName,
                                ),
                                Text(
                                  "${product.price}\$",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.amber,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ProductPage(
                                        product: product,
                                      ),
                                    ));
                              },
                            ),
                          )
                        ],
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ),
          CategoryPage(),
          SearchPage(),
          CartPage(),
          ProfilePage(),
        ].elementAt(_page),
        bottomNavigationBar: CurvedNavigationBar(
            index: 0,
            height: 48.0,
            items: <Widget>[
              Icon(
                Icons.home,
                size: 24,
                color: Colors.white,
              ),
              Icon(
                Icons.list,
                size: 24,
                color: Colors.white,
              ),
              Icon(
                Icons.search,
                size: 24,
                color: Colors.white,
              ),
              Icon(
                Icons.shopping_cart,
                size: 24,
                color: Colors.white,
              ),
              Icon(
                Icons.person,
                size: 24,
                color: Colors.white,
              ),
            ],
            color: Colors.orange,
            buttonBackgroundColor: Colors.orange,
            backgroundColor: Colors.white,
            animationCurve: Curves.easeInOut,
            animationDuration: Duration(milliseconds: 600),
            onTap: (index) {
              setState(() {
                _page = index;
              });
            }));
  }
}
