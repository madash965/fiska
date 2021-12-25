import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogHelper {
  static void showErrorDialog(
      {String message = "Error",
      String description = "Something went wrong!!"}) {
    Get.dialog(
      Dialog(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                message ?? "",
                style: Get.textTheme.headline4,
              ),
              Text(
                description ?? "",
                style: Get.textTheme.headline6,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange[300],
                ),
                onPressed: () {
                  if (Get.isDialogOpen) {
                    Get.back();
                  }
                },
                child: Text("Okay"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static void showLoading([String message]) {
    Get.dialog(
      Dialog(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(
                color: Colors.orange[300],
              ),
              SizedBox(
                height: 8,
              ),
              Text(message ?? ""),
            ],
          ),
        ),
      ),
    );
  }

  static void hideLoading() {
    if (Get.isDialogOpen) {
      Get.back();
    }
  }
}
