import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:fiska/pages/checkout_pages/delivery.dart';
import 'package:fiska/pages/checkout_pages/payment.dart';
import 'package:fiska/pages/checkout_pages/summary.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutPage extends StatefulWidget {
  final num price;
  CheckoutPage({this.price});
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  int index = 1;
  @override
  void initState() {
    _controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  myTabBack(int val) {
    _controller.animateTo(
      val,
      duration: Duration(seconds: 1),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'CheckOut',
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
          ),
        ),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        actionsIconTheme: IconThemeData(color: Colors.black),
        iconTheme: IconThemeData(color: Colors.black),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: IgnorePointer(
            child: MyTabWidget(controller: _controller),
          ),
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Delivery(price: widget.price, function: myTabBack),
          Payment(
            price: widget.price,
            function: myTabBack,
          ),
          Summary(price: widget.price, function: myTabBack),
        ],
      ),
    );
  }
}

class MyTabWidget extends StatelessWidget {
  const MyTabWidget({
    Key key,
    @required TabController controller,
  })  : _controller = controller,
        super(key: key);

  final TabController _controller;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      unselectedLabelColor: Colors.black,
      labelColor: Colors.black,
      indicator: BoxDecoration(
        color: Colors.orange.shade300,
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(75),
          right: Radius.circular(75),
        ),
      ),
      controller: _controller,
      tabs: [
        Tab(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(EvaIcons.carOutline),
              Text(
                'Delivery',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Tab(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(EvaIcons.creditCardOutline),
              Text(
                'Payment',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Tab(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(EvaIcons.bookmark),
              Text(
                'Summary',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
