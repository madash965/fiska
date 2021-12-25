import 'package:fiska/widgets/my_form_field.dart';
import 'package:flutter/material.dart';

class DetailsUI extends StatelessWidget {
  const DetailsUI({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> _formKey = GlobalKey();
    TextEditingController _nameController,
        _emailController,
        _prefixController,
        _phoneController,
        _dobController;
    //List detailList = [""];
    return SafeArea(
      child: Container(
        color: Colors.black12,
        child: ListView(
          //padding: EdgeInsets.fromLTRB(8, 0, 8, 8),
          children: [
            Container(
              padding: EdgeInsets.all(8),
              color: Colors.orange[300],
              height: 200,
              child: Stack(
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 100,
                      backgroundColor: Colors.blue,
                      foregroundImage: NetworkImage(
                        "https://www.notebookcheck.net/fileadmin/Notebooks/News/_nc3/csm_E1l198iXEAk0SAy_0708aac98d.jpg",
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 85,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: MaterialButton(
                        elevation: 2,
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(
                            Icons.camera_alt_outlined,
                            size: 30,
                          ),
                        ),
                        color: Colors.indigo,
                        shape: CircleBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(8),
              width: double.infinity,
              child: Form(
                key: _formKey,
                child: ListView(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyFormField(
                      controller: _nameController,
                      initialValue: "First Name",
                      maxLines: 1,
                      decoration: inputDecoration("Name"),
                      readOnly: false,
                      obscureText: false,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    MyFormField(
                      controller: _emailController,
                      initialValue: "sulaimanabubakar@gmail.com",
                      maxLines: 1,
                      decoration: inputDecoration("Email"),
                      readOnly: true,
                      obscureText: false,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: MyFormField(
                            controller: _prefixController,
                            initialValue: "+234",
                            maxLines: 1,
                            decoration: inputDecoration("Prefix"),
                            readOnly: true,
                            obscureText: false,
                          ),
                        ),
                        Expanded(
                          child: MyFormField(
                            controller: _phoneController,
                            initialValue: "1155151151",
                            maxLines: 1,
                            decoration: inputDecoration("Phone Number"),
                            readOnly: false,
                            maxItems: 11,
                            keyboardType: TextInputType.phone,
                            obscureText: false,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    MyFormField(
                      controller: _nameController,
                      initialValue: "20-12-1996",
                      maxLines: 1,
                      decoration: inputDecoration(
                        "Date of Birth",
                      ),
                      readOnly: false,
                      obscureText: false,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  InputDecoration inputDecoration(String label) {
    return InputDecoration(
      filled: true,
      fillColor: Colors.white,
      label: Text(
        label,
        style: TextStyle(
          fontSize: 17,
          color: Colors.black,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black26,
          width: 1.5,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.orange[300],
          width: 1.5,
        ),
      ),
    );
  }
}
