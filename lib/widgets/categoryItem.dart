import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final Color backgroundColor;
  final Color iconColor;
  final double size;
  final IconData icon;
  final Function onPressed;

  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;

  CategoryItem(
      {@required this.backgroundColor,
      @required this.size,
      @required this.icon,
      @required this.onPressed,
      @required this.margin,
      @required this.padding,
      this.iconColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(size),
      ),
      padding: padding,
      margin: margin,
      child: IconButton(
        iconSize: 30.0,
        color: iconColor,
        onPressed: onPressed,
        icon: Icon(icon),
      ),
    );
  }
}
