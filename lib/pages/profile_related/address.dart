import 'package:fiska/widgets/addressblock.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddressPage extends StatelessWidget {
  const AddressPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[300],
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          color: Colors.black,
          onPressed: () => Get.back(),
        ),
        title: Text(
          "Address",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: AddressUI(),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.height * 0.015),
        child: MaterialButton(
          onPressed: () {},
          color: Colors.orange[300],
          shape: StadiumBorder(),
          child: Text(
            "Add New Address",
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
