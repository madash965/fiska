import 'package:flutter/material.dart';

class SliverBoxWidget extends StatelessWidget {
  final Color color;
  final double boxHeight;
  final String text;
  const SliverBoxWidget(
      {UniqueKey key,
      @required this.text,
      @required this.boxHeight,
      @required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: boxHeight,
        child: Container(
          padding: EdgeInsets.fromLTRB(10.0, 2.0, 0.0, 2.0),
          child: Text(
            '$text',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),
          ),
        ),
      ),
    );
  }
}
