import 'package:flutter/material.dart';
import 'package:flash/flash.dart';

class ToastBar extends StatelessWidget {
  final String message;
  //final BuildContext context;
  final FlashController controller;
  const ToastBar({Key key, this.message, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flash.dialog(
      controller: controller,
      alignment: Alignment.bottomCenter,
      borderRadius: BorderRadius.all(
        Radius.circular(8),
      ),
      barrierBlur: 0,
      backgroundColor: Colors.orange[300],
      margin: const EdgeInsets.only(bottom: 52),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          message,
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}

class SnackBar extends StatelessWidget {
  final String message;
  //final BuildContext context;
  const SnackBar({Key key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class DialogBar extends StatelessWidget {
  final String message;
  //final BuildContext context;
  const DialogBar({Key key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
