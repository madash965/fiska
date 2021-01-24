// import 'package:fiska/models/user.dart';
// import 'package:fiska/pages/profilePage.dart';
// import 'package:fiska/services/api_service.dart';
// import 'package:fiska/widgets/my_form_field.dart';
// import 'package:flushbar/flushbar.dart';
// import 'package:flutter/material.dart';
// import 'package:popup_box/popup_box.dart';
// import 'package:validated/validated.dart' as validate;

// class CreateUser extends StatefulWidget {
//   final Function animate;
//   CreateUser({Key key, this.animate}) : super(key: key);
//   @override
//   _CreateUserState createState() => _CreateUserState();
// }

// class _CreateUserState extends State<CreateUser> {
//   GlobalKey<FormState> _formKey = GlobalKey();
//   TextEditingController _nameController;
//   TextEditingController _emailController;
//   TextEditingController _phoneController;
//   TextEditingController _addressController;
//   TextEditingController _passwordController;
//   User user = User(email: "", password: "", pNumber: "", address: "", name: "");
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.black12,
//       padding: EdgeInsets.symmetric(
//         horizontal: 10,
//         vertical: 15,
//       ),
//       child: Form(
//         key: _formKey,
//         child: ListView(
//           children: [
//             MyFormField(
//               controller: _nameController,
//               keyboardType: TextInputType.name,
//               obscureText: false,
//               decoration: InputDecoration(
//                 filled: true,
//                 fillColor: Colors.white,
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(8),
//                   ),
//                 ),
//                 icon: Icon(Icons.account_circle),
//                 labelText: "Name",
//                 labelStyle: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.blue,
//                 ),
//               ),
//               validator: (String value) {
//                 if (validate.isNull(value)) {
//                   return "Please input a proper name";
//                 }
//               },
//               onSaved: (String val) {
//                 user.name = val;
//               },
//             ),
//             Divider(
//               height: 25,
//               color: Colors.transparent,
//             ),
//             MyFormField(
//               controller: _emailController,
//               keyboardType: TextInputType.emailAddress,
//               obscureText: false,
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
//                 if (!validate.isEmail(value) || validate.isNull(value)) {
//                   return "Please input a valid email";
//                 }
//               },
//               onSaved: (String val) {
//                 user.email = val;
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
//                 if (value == null || value.length < 6) {
//                   return "input a password greater than 6 characters in length";
//                 }
//               },
//               onSaved: (String val) {
//                 user.password = val;
//               },
//             ),
//             Divider(
//               height: 25,
//               color: Colors.transparent,
//             ),
//             MyFormField(
//               controller: _addressController,
//               keyboardType: TextInputType.streetAddress,
//               obscureText: false,
//               decoration: InputDecoration(
//                 filled: true,
//                 fillColor: Colors.white,
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(15),
//                   ),
//                 ),
//                 icon: Icon(Icons.streetview),
//                 labelText: "Address",
//                 labelStyle: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.blue,
//                 ),
//               ),
//               // validator: (String value) {
//               //   if (value.isEmpty || value.length < 6 ){
//               //     return "input a password greater than 6 characters in length";
//               //   }
//               // },
//               onSaved: (String val) {
//                 if (val == null) {
//                   user.address = "";
//                 } else {
//                   user.address = val;
//                 }
//               },
//             ),
//             Divider(
//               height: 25,
//               color: Colors.transparent,
//             ),
//             MyFormField(
//               controller: _phoneController,
//               keyboardType: TextInputType.number,
//               obscureText: false,
//               decoration: InputDecoration(
//                 prefixText: "+234",
//                 filled: true,
//                 fillColor: Colors.white,
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(8),
//                   ),
//                 ),
//                 icon: Icon(Icons.phone),
//                 labelText: "Phone Number",
//                 labelStyle: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.blue,
//                 ),
//               ),
//               // validator: (String value) {
//               //   if (validate.isNumeric(value) == false) {
//               //     return "please input a valid phone number";
//               //   }
//               // },
//               onSaved: (String val) {
//                 if (val == null) {
//                   user.pNumber = "";
//                 } else {
//                   user.pNumber = val;
//                 }
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
//                   "Already have an account?",
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.w700,
//                   ),
//                 ),
//                 FlatButton(
//                   onPressed: () {
//                     widget.animate(1);
//                   },
//                   child: Text(
//                     "Sign In",
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
//               height: 12,
//               color: Colors.transparent,
//             ),
//             MaterialButton(
//               shape: StadiumBorder(),
//               child: Text(
//                 "Sign Up",
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
//                   var mury = await ApiService().createUser(user);
//                   print("create: ${user.email}" + " " + "${user.password}");
//                   if (mury) {
//                     showSimpleFlushbarWithoutButton(
//                         context, "User Created Successfully");
//                     widget.animate(1);
//                   } else {
//                     print("Failed");
//                     PopupBox.showPopupBox(
//                       context: context,
//                       willDisplayWidget: Text(
//                         "Cannot Create User",
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
