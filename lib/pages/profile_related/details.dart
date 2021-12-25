import 'package:fiska/widgets/detailsblock.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          "Details",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "SAVE",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: DetailsUI(),
    );
  }
}
