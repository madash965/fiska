import 'package:flutter/material.dart';
import "package:fiska/models/check_box.dart";
import 'package:popup_box/popup_box.dart';

class Summary extends StatelessWidget {
  final num price;
  final Function function;
  Summary({Key key, this.function, this.price}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Map stuff2 = CheckboxWidget.stuff2;
    Map _address = CheckboxWidget.address;
    return Scaffold(
      body: Container(
        color: Colors.black12,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'ORDER SUMMARY',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            OrderSummary(price: price),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'CUSTOMER ADDRESS',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Container(
              //margin: EdgeInsets.symmetric(horizontal: 5),
              //height: MediaQuery.of(context).size.height / 7,
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 12,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      '${_address["name"]}',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      '${_address["address"]}',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      '${_address["number"]}',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'DELIVERY METHOD',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Container(
              //margin: EdgeInsets.symmetric(horizontal: 5),
              //height: MediaQuery.of(context).size.height / 7,
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 12,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${stuff2["delivery"].title}',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                    ),
                  ),
                  Divider(
                    color: Colors.transparent,
                    height: 8,
                  ),
                  Text(
                    '${stuff2["delivery"].subtitle}',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'PAYMENT METHOD',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Container(
              //margin: EdgeInsets.symmetric(horizontal: 5),
              //height: MediaQuery.of(context).size.height / 7,
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 12,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${stuff2["payment"].title}',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                    ),
                  ),
                  Divider(
                    color: Colors.transparent,
                    height: 8,
                  ),
                  Text(
                    '${stuff2["payment"].subtitle}',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'VOUCHERS/COUPONS',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Container(
              //margin: EdgeInsets.symmetric(horizontal: 5),
              height: MediaQuery.of(context).size.height / 7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height / 6.5,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 12),
          children: [
            MaterialButton(
              color: Colors.orange.shade300,
              child: Text(
                "Pay",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                ),
              ),
              onPressed: () async {
                await showDialog(
                  context: context,
                  builder: (context) => Container(
                    decoration: BoxDecoration(
                      color: Colors.greenAccent[100],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 6,
                      vertical: MediaQuery.of(context).size.width / 2.1,
                    ),
                    //alignment: Alignment.center,

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Payment Completed',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Colors.green[400],
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                          ),
                        ),
                        Divider(
                          color: Colors.transparent,
                          height: 15,
                        ),
                        Center(
                          child: RaisedButton(
                            color: Colors.green[200],
                            child: Text(
                              'OK',
                              style: TextStyle(fontSize: 16),
                            ),
                            onPressed: () =>
                                Navigator.of(context, rootNavigator: true)
                                    .pop(),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            Divider(
              height: 5,
              color: Colors.transparent,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  minWidth: MediaQuery.of(context).size.width / 2.2,
                  color: Colors.orange.shade300,
                  child: Text(
                    "First",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  onPressed: () => function(0),
                ),
                MaterialButton(
                  minWidth: MediaQuery.of(context).size.width / 2.2,
                  color: Colors.orange.shade300,
                  child: Text(
                    "Previous",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  onPressed: () => function(1),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class OrderSummary extends StatelessWidget {
  const OrderSummary({
    Key key,
    @required this.price,
  }) : super(key: key);

  final num price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        color: Colors.white,
      ),
      child: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 10,
        ),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Item Price:",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "$price",
                style: TextStyle(
                  color: Colors.orange.shade300,
                  fontSize: 17,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
          Divider(
            height: 10,
            color: Colors.transparent,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Shipping Price:",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "$price",
                style: TextStyle(
                  color: Colors.orange.shade300,
                  fontSize: 17,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
          Divider(
            height: 15,
            color: Colors.grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total:",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                "${price + price}",
                style: TextStyle(
                  color: Colors.orange.shade300,
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
