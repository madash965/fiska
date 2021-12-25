import 'package:fiska/controllers/orderController.dart';
import 'package:fiska/widgets/orderUI.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderListingPage extends StatelessWidget {
  const OrderListingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OrderController orderController = Get.put(OrderController());
    orderController.fetchOrderListing();
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.orange[300],
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          color: Colors.black,
          onPressed: () => Get.back(),
        ),
        title: Text(
          "Orders",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: Obx(() {
        if (orderController.isLoading.value) {
          return Center(
            child: CircularProgressIndicator(
              color: Colors.orange[300],
            ),
          );
        } else {
          return OrderListingUI();
        }
      }),
    );
  }
}

class OrderDetailsPage extends StatelessWidget {
  const OrderDetailsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //OrderController orderController = Get.put(OrderController());
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.orange[300],
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          color: Colors.black,
          onPressed: () => Get.back(),
        ),
        title: Text(
          "Order Detail",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: OrderDetailsUI(),
    );
  }
}
