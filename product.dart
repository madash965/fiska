import 'package:flutter/material.dart';

class Product {
  final String productName;
  final String image;
  final String price;
  final String description;

  Product(
      {@required this.description,
      @required this.image,
      @required this.price,
      @required this.productName});

  static List<Product> productList = [
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

  static List<Product> cartList = [];
  static List<Product> checkOutList = [];
}
