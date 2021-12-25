import 'package:fiska/widgets/saveditemsUI.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SavedItemsPage extends StatelessWidget {
  const SavedItemsPage({Key key}) : super(key: key);

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
          "Saved Items",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: SavedItemsUI(),
    );
  }
}
