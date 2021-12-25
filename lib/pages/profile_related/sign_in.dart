import 'package:fiska/controllers/authController.dart';
import 'package:fiska/pages/profilePage.dart';
import 'package:fiska/services/api_service.dart';
import 'package:fiska/widgets/flash.dart';
import 'package:fiska/widgets/my_form_field.dart';
import 'package:flash/flash.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:popup_box/popup_box.dart';
import "package:validated/validated.dart" as validate;
import 'package:fiska/models/user.dart';

class SignIn extends StatefulWidget {
  final Function animate;
  SignIn({Key key, this.animate}) : super(key: key);
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  AuthController authController = Get.find<AuthController>();
  GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController _nameController;
  TextEditingController _passwordController;
  String username;
  String password;
  String userType = "1";
  String errMsg = "hello";
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 20,
      ),
      child: Form(
        key: _formKey,
        child: ListView(
          children: [
            MyFormField(
              controller: _nameController,
              obscureText: false,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                focusColor: Colors.orange[300],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                icon: Icon(Icons.email),
                hintMaxLines: 1,
                hintText: "Email or Username",
                hintStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black45,
                ),
              ),
              validator: (String value) {
                if (validate.isNull(value)) {
                  return "Please input a valid name";
                }
              },
              onSaved: (String val) {
                username = val;
              },
            ),
            Divider(
              height: 25,
              color: Colors.transparent,
            ),
            MyFormField(
              controller: _passwordController,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              maxLines: 1,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                focusColor: Colors.orange[300],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                icon: Icon(Icons.lock),
                hintMaxLines: 1,
                hintText: "Password",
                hintStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black45,
                ),
              ),
              validator: (String value) {
                if (validate.isNull(value) || value.length < 6) {
                  return "Please input a valid password";
                }
              },
              onSaved: (String val) {
                password = val;
              },
            ),
            Divider(
              height: 25,
              color: Colors.transparent,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    widget.animate(0);
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.orange[500],
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              height: 10,
              color: Colors.transparent,
            ),
            MaterialButton(
              shape: StadiumBorder(),
              child: Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              color: Colors.orange[300],
              onPressed: () async {
                bool validate = _formKey.currentState.validate();
                if (validate) {
                  _formKey.currentState.save();
                  authController.login(username, password, userType);
                  print("user: ${authController.user.value.userName}");
                  if (authController.isAuthenticated.value == true) {
                    await showFlash(
                      context: context,
                      duration: Duration(seconds: 4),
                      builder: (context, controller) => ToastBar(
                        controller: controller,
                        message: "Login Successful",
                      ),
                    );
                    // showSimpleFlushbarWithoutButton(
                    //     context, "Login Successful");
                    // Get.to(() => ProfilePage()
                    //     //ProfilePage(user: authController.user.value),
                    //     );
                  } else {
                    print("user: ${authController.user.value.userName}");
                    await showDialog(
                      context: context,
                      //persistent: false,
                      builder: (context) => Container(
                        child: AlertDialog(
                          //shape: StadiumBorder(),
                          backgroundColor: Colors.orange[300],
                          content: Center(
                            heightFactor: 50,
                            child: Text(
                              "User not Found \nUsername or Password Wrong",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () => Get.back(),
                              child: Text(
                                "Ok",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                    // PopupBox.showPopupBox(
                    //   context: context,
                    //   willDisplayWidget: Text(
                    //     "User not Found \n Username or Password Wrong",
                    //     style: TextStyle(
                    //       fontSize: 27,
                    //       fontWeight: FontWeight.bold,
                    //       color: Colors.blue,
                    //     ),
                    //   ),
                    //   button: TextButton(
                    //     onPressed: () => Get.back(),
                    //     child: Text('Ok'),
                    //   ),
                    // );
                    //errMsg = "Try Again. Invalid Email or Password";
                  }
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

void showSimpleFlushbarWithoutButton(BuildContext context, String message) {
  Flushbar(
    messageText: Text(
      "$message",
      style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
    ),
    duration: Duration(seconds: 3),
    backgroundColor: Colors.orange,
    padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),
    borderRadius: 10.0,
  )..show(context);
}
