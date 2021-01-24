import 'package:fiska/models/check_box.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  final num price;
  final Function function;
  Payment({Key key, this.function, this.price}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  CheckboxWidget selectedRadio;
  Map _stuff = CheckboxWidget.stuff2;
  List<CheckboxWidget> cList = [
    CheckboxWidget(
      title: 'Pay With Credit Card',
      subtitle: 'Choose to Pay With VISA,MASTER CARD or VERVE',
      index: 1,
    ),
    CheckboxWidget(
      title: 'Cash on Delivery',
      //subtitle: 'Choose to Pay With VISA,MASTER CARD or VERVE',
      index: 1,
    ),
  ];

  @override
  void initState() {
    super.initState();
    selectedRadio = cList[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black12,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          children: [
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
              height: MediaQuery.of(context).size.height / 7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                color: Colors.white,
              ),
              child: RadioListTile(
                activeColor: Colors.orange[300],
                title: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 8,
                  ),
                  child: Text(
                    '${cList[0].title}',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                    ),
                  ),
                ),
                subtitle: Text(
                  '${cList[0].subtitle}',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
                value: cList[0],
                groupValue: selectedRadio,
                onChanged: (val) {
                  setState(() {
                    //chosenOption = "\n${val.title}\n${val.subtitle}";
                    selectedRadio = val;
                    _stuff["payment"] = selectedRadio;
                  });
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              //margin: EdgeInsets.symmetric(horizontal: 5),
              height: MediaQuery.of(context).size.height / 8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                color: Colors.white,
              ),
              child: RadioListTile(
                activeColor: Colors.orange[300],
                title: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 8,
                  ),
                  child: Text(
                    '${cList[1].title}',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                    ),
                  ),
                ),
                // subtitle: Text(
                //   '${cList[0].subtitle}',
                //   style: TextStyle(
                //     fontWeight: FontWeight.w700,
                //     fontSize: 15,
                //   ),
                // ),
                value: cList[1],
                groupValue: selectedRadio,
                onChanged: (val) {
                  setState(() {
                    //chosenOption = "\n${val.title}\n${val.subtitle}";
                    selectedRadio = val;
                    _stuff["payment"] = selectedRadio;
                  });
                },
              ),
            ),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
      bottomNavigationBar: PriceBar(
        price: widget.price,
        function: widget.function,
      ),
    );
  }
}

class PriceBar extends StatelessWidget {
  const PriceBar({
    Key key,
    @required this.price,
    @required this.function,
  }) : super(key: key);

  final num price;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 4.9,
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
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
                onPressed: () => function(0),
              ),
              MaterialButton(
                minWidth: MediaQuery.of(context).size.width / 2.2,
                color: Colors.orange.shade300,
                child: Text(
                  "Next",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                onPressed: () => function(2),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
