import 'package:flutter/material.dart';
import 'package:skeleton_text/skeleton_text.dart';

class SkeletonLoader extends StatelessWidget {
  final double width;
  final double height;
  final BorderRadius borderRadius;
  SkeletonLoader._(
      {this.width,
      this.height,
      this.borderRadius = const BorderRadius.all(
        Radius.circular(0),
      ),
      Key key})
      : super(key: key);

  SkeletonLoader.square({
    double width,
    double height,
    BorderRadius borderRadius,
  }) : this._(width: width, height: height, borderRadius: borderRadius);

  SkeletonLoader.rounded({
    double width,
    double height,
    BorderRadius borderRadius,
  }) : this._(
          width: width,
          height: height,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        );

  @override
  Widget build(BuildContext context) {
    return SkeletonAnimation(
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: Colors.grey[300],
        ),
      ),
    );
  }
}
