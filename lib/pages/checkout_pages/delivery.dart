import 'package:fiska/models/check_box.dart';
import 'package:fiska/widgets/my_form_field.dart';
import 'package:flutter/material.dart';
import 'package:popup_box/popup_box.dart';

class Delivery extends StatefulWidget {
  final num price;
  final Function function;
  Delivery({Key key, this.function, this.price}) : super(key: key);

  @override
  _DeliveryState createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController _nameController;
  TextEditingController _addressController;
  TextEditingController _numberController;
  CheckboxWidget selectedRadio;
  String chosenOption = "";
  Map _stuff = CheckboxWidget.stuff2;
  Map _address;
  List<CheckboxWidget> cList = [
    CheckboxWidget(
      title: 'Door Delivery',
      subtitle: 'Delivered between this and that for #1500',
      index: 1,
    ),
    CheckboxWidget(
      title: 'Delivery to Pickup Station',
      subtitle:
          'To be delivered at a pickup station between this date to this date at #500',
      index: 2,
    ),
  ];
  @override
  void initState() {
    super.initState();
    selectedRadio = cList[0];
    _address = CheckboxWidget.address;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black12,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'YOUR ADDRESS',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                FlatButton.icon(
                  color: Colors.transparent,
                  onPressed: () async {
                    await PopupBox.showPopupBox(
                      context: context,
                      willDisplayWidget: Form(
                        key: _formKey,
                        child: Column(
                          //mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: MyFormField(
                                controller: _nameController,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 8,
                                  ),
                                  labelText: 'Name',
                                  labelStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                  border: InputBorder.none,
                                  fillColor: Colors.grey[300],
                                  filled: true,
                                ),
                                keyboardType: TextInputType.name,
                                obscureText: false,
                                onSubmitted: (val) {
                                  setState(() {
                                    _address['name'] = val;
                                  });
                                },
                                validator: (val) {
                                  if (val.isEmpty) {
                                    return 'Please Input a valid Name';
                                  }
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: MyFormField(
                                controller: _addressController,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 8,
                                  ),
                                  labelText: 'Address',
                                  labelStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                  border: InputBorder.none,
                                  fillColor: Colors.grey[300],
                                  filled: true,
                                ),
                                keyboardType: TextInputType.streetAddress,
                                obscureText: false,
                                onSubmitted: (val) {
                                  setState(() {
                                    _address['address'] = val;
                                  });
                                },
                                validator: (val) {
                                  if (val.isEmpty) {
                                    return 'Please Input a valid Address';
                                  }
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: MyFormField(
                                controller: _numberController,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 8,
                                  ),
                                  labelText: 'Phone Number',
                                  labelStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                  border: InputBorder.none,
                                  fillColor: Colors.grey[300],
                                  filled: true,
                                  prefixText: '+234',
                                ),
                                keyboardType: TextInputType.number,
                                obscureText: false,
                                maxItems: 11,
                                onSubmitted: (val) {
                                  setState(() {
                                    _address["number"] = val;
                                  });
                                },
                                validator: (val) {
                                  if (val.lenght < 11) {
                                    return "Please input a valid Phone Number";
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      button: FlatButton(
                        onPressed: () {
                          _formKey.currentState.validate();
                          _formKey.currentState.save();
                          Navigator.of(context, rootNavigator: true).pop();
                        },
                        child: Text('Done'),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.edit,
                    color: Colors.orange[300],
                  ),
                  label: Text(
                    'CHANGE YOUR ADDRESS',
                    style: TextStyle(
                      color: Colors.orange[300],
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              //margin: EdgeInsets.symmetric(horizontal: 5),
              //height: MediaQuery.of(context).size.height / 5,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      '${_address['name']}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4),
                    child: Text(
                      '${_address['address']}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      '${_address['number']}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
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
                    chosenOption = "\n${val.title}\n${val.subtitle}";
                    selectedRadio = val;
                    _stuff["delivery"] = selectedRadio;
                  });
                },
              ),
            ),
            SizedBox(
              height: 10,
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
                    '${cList[1].title}',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                    ),
                  ),
                ),
                subtitle: Text(
                  '${cList[1].subtitle}',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
                value: cList[1],
                groupValue: selectedRadio,
                onChanged: (val) {
                  setState(() {
                    chosenOption = "\n${val.title}\n${val.subtitle}";
                    selectedRadio = val;
                    _stuff["delivery"] = selectedRadio;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'SHIPPING ADDRESS',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Container(
              //margin: EdgeInsets.symmetric(horizontal: 5),
              height: MediaQuery.of(context).size.height / 5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
      bottomNavigationBar:
          PriceBar(price: widget.price, function: widget.function),
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
          MaterialButton(
            color: Colors.orange.shade300,
            child: Text(
              "Next",
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
    );
  }
}
