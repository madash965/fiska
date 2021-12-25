import 'package:fiska/widgets/my_form_field.dart';
import 'package:flutter/material.dart';

class AddressUI extends StatelessWidget {
  const AddressUI({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> _formKey =
        GlobalKey<FormState>(debugLabel: "_addressForm");
    TextEditingController _countryController,
        _stateController,
        _cityController,
        _streetController,
        _zipController,
        _phoneController;
    return SafeArea(
      child: Container(
        color: Colors.black12,
        child: ListView(
          padding: EdgeInsets.all(8),
          children: [
            Form(
              key: _formKey,
              child: ListView.separated(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  double height = MediaQuery.of(context).size.height;
                  List _imageList = [
                    "assets/th.jpg",
                    "assets/th_1.jpg",
                    "assets/th_2.jpg",
                  ];
                  String randomImage = (_imageList.toList()..shuffle()).first;
                  return Container(
                    //height: height * 0.5,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset(
                            randomImage,
                            fit: BoxFit.fitWidth,
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.2,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: MyFormField(
                                  controller: _countryController,
                                  //initialValue: "+234",
                                  maxLines: 1,
                                  decoration: myInputDecoration("Country"),
                                  readOnly: true,
                                  obscureText: false,
                                ),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.height * 0.01,
                                //color: Colors.transparent,
                              ),
                              Expanded(
                                flex: 1,
                                child: MyFormField(
                                  controller: _stateController,
                                  //initialValue: "+234",
                                  maxLines: 1,
                                  decoration: myInputDecoration("State"),
                                  readOnly: true,
                                  obscureText: false,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: MyFormField(
                                  controller: _cityController,
                                  //initialValue: "+234",
                                  maxLines: 1,
                                  decoration: myInputDecoration("City"),
                                  readOnly: true,
                                  obscureText: false,
                                ),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.height * 0.01,
                                //color: Colors.transparent,
                              ),
                              Expanded(
                                flex: 1,
                                child: MyFormField(
                                  controller: _streetController,
                                  //initialValue: "+234",
                                  maxLines: 1,
                                  decoration: myInputDecoration("Street"),
                                  readOnly: true,
                                  obscureText: false,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: MyFormField(
                                  controller: _zipController,
                                  keyboardType: TextInputType.number,
                                  //initialValue: "+234",
                                  maxLines: 1,
                                  decoration: myInputDecoration("Zip Code"),
                                  readOnly: true,
                                  obscureText: false,
                                ),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.height * 0.01,
                                //color: Colors.transparent,
                              ),
                              Expanded(
                                flex: 1,
                                child: MyFormField(
                                  controller: _phoneController,
                                  keyboardType: TextInputType.phone,
                                  //initialValue: "+234",
                                  maxLines: 1,
                                  decoration: myInputDecoration("Phone"),
                                  readOnly: true,
                                  obscureText: false,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                "SAVE",
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => Container(
                  height: MediaQuery.of(context).size.height / 50,
                  color: Colors.transparent,
                ),
                itemCount: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

InputDecoration myInputDecoration(String label) {
  return InputDecoration(
    filled: true,
    fillColor: Colors.white,
    label: Text(
      "$label",
      style: TextStyle(
        fontSize: 18,
        color: Colors.black,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.orange[300],
        width: 2,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black26,
        width: 1,
      ),
    ),
  );
}
