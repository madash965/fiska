import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar ShopAppBar(BuildContext context) {
  final icon = CupertinoIcons.settings;

  return AppBar(
    leading: BackButton(
      color: Colors.deepOrange,
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions: [],
  );
}
