// import 'package:fiska/pages/profilePage.dart';
// import 'package:fiska/services/api_service.dart';
// import 'package:fiska/widgets/my_form_field.dart';
// import 'package:flushbar/flushbar.dart';
// import 'package:flutter/material.dart';
// import 'package:popup_box/popup_box.dart';
// import "package:validated/validated.dart" as validate;
// import 'package:fiska/models/user.dart';

// class SignIn extends StatefulWidget {
//   final Function animate;
//   SignIn({Key key, this.animate}) : super(key: key);
//   @override
//   _SignInState createState() => _SignInState();
// }

// class _SignInState extends State<SignIn> {
//   GlobalKey<FormState> _formKey = GlobalKey();
//   TextEditingController _nameController;
//   TextEditingController _passwordController;
//   String username;
//   String password;
//   String errMsg = "hello";
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.black12,
//       padding: EdgeInsets.symmetric(
//         horizontal: 10,
//         vertical: 20,
//       ),
//       child: Form(
//         key: _formKey,
//         child: ListView(
//           children: [
//             MyFormField(
//               controller: _nameController,
//               obscureText: false,
//               keyboardType: TextInputType.name,
//               decoration: InputDecoration(
//                 filled: true,
//                 fillColor: Colors.white,
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(8),
//                   ),
//                 ),
//                 icon: Icon(Icons.email),
//                 labelText: "Email",
//                 labelStyle: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.blue,
//                 ),
//               ),
//               validator: (String value) {
//                 if (validate.isNull(value) || validate.isAlphanumeric(value)) {
//                   return "Please input a valid name";
//                 }
//               },
//               onSaved: (String val) {
//                 username = val;
//               },
//             ),
//             Divider(
//               height: 25,
//               color: Colors.transparent,
//             ),
//             MyFormField(
//               controller: _passwordController,
//               keyboardType: TextInputType.visiblePassword,
//               obscureText: true,
//               maxLines: 1,
//               decoration: InputDecoration(
//                 filled: true,
//                 fillColor: Colors.white,
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(8),
//                   ),
//                 ),
//                 icon: Icon(Icons.lock),
//                 labelText: "Password",
//                 labelStyle: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.blue,
//                 ),
//               ),
//               validator: (String value) {
//                 if (validate.isNull(value) || value.length < 6) {
//                   return "Please input a valid password";
//                 }
//               },
//               onSaved: (String val) {
//                 password = val;
//               },
//             ),
//             Divider(
//               height: 25,
//               color: Colors.transparent,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Don't have an account?",
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.w700,
//                   ),
//                 ),
//                 FlatButton(
//                   onPressed: () {
//                     widget.animate(0);
//                   },
//                   child: Text(
//                     "Sign Up",
//                     style: TextStyle(
//                       fontSize: 18,
//                       color: Colors.orange[500],
//                       fontWeight: FontWeight.w700,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Divider(
//               height: 10,
//               color: Colors.transparent,
//             ),
//             MaterialButton(
//               shape: StadiumBorder(),
//               child: Text(
//                 "Sign In",
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               color: Colors.orange[300],
//               onPressed: () async {
//                 bool validate = _formKey.currentState.validate();
//                 if (validate) {
//                   _formKey.currentState.save();
//                   var user = await ApiService().signInUser(username, password);
//                   //print("user: ${ApiService().signInUser(username, password)}");
//                   if (user != null) {
//                     showSimpleFlushbarWithoutButton(
//                         context, "Login Successful");
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (_) => ProfilePage(
//                           user: user,
//                         ),
//                       ),
//                     );
//                   } else {
//                     print("user: ${user.toString()}");
//                     PopupBox.showPopupBox(
//                       context: context,
//                       willDisplayWidget: Text(
//                         "User not Found",
//                         style: TextStyle(
//                           fontSize: 27,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.blue,
//                         ),
//                       ),
//                       button: FlatButton(
//                         child: Text('Ok'),
//                         onPressed: () =>
//                             Navigator.of(context, rootNavigator: true).pop(),
//                       ),
//                     );
//                     //errMsg = "Try Again. Invalid Email or Password";
//                   }
//                 }
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// void showSimpleFlushbarWithoutButton(BuildContext context, String message) {
//   Flushbar(
//     messageText: Text(
//       "$message",
//       style: TextStyle(
//         fontSize: 20.0,
//         fontWeight: FontWeight.w600,
//         color: Colors.black,
//       ),
//     ),
//     duration: Duration(seconds: 3),
//     backgroundColor: Colors.orange,
//     padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),
//     borderRadius: 10.0,
//   )..show(context);
// }
