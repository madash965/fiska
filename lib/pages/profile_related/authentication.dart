// import 'package:fiska/pages/profile_related/create_user.dart';
// import 'package:fiska/pages/profile_related/sign_in.dart';
// import 'package:flutter/material.dart';

// class Authentication extends StatefulWidget {
//   Authentication({Key key}) : super(key: key);

//   @override
//   _AuthenticationState createState() => _AuthenticationState();
// }

// class _AuthenticationState extends State<Authentication>
//     with SingleTickerProviderStateMixin {
//   TabController _tabController;

//   @override
//   void initState() {
//     _tabController = TabController(length: 2, vsync: this);
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }

//   changeMytab(int index) {
//     _tabController.animateTo(index);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text(
//           'Login',
//           style: TextStyle(
//             color: Colors.black,
//             fontSize: 28,
//           ),
//         ),
//         backgroundColor: Colors.black12,
//         brightness: Brightness.light,
//         elevation: 0,
//         actionsIconTheme: IconThemeData(color: Colors.black),
//         iconTheme: IconThemeData(color: Colors.black),
//         bottom: TabBar(
//           indicator: BoxDecoration(
//             color: Colors.orange[300],
//             borderRadius: BorderRadius.horizontal(
//               left: Radius.circular(15),
//               right: Radius.circular(15),
//             ),
//           ),
//           unselectedLabelColor: Colors.red,
//           controller: _tabController,
//           tabs: [
//             Tab(
//               child: Text(
//                 'Sign Up',
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 18,
//                 ),
//               ),
//             ),
//             Tab(
//               child: Text(
//                 'Sign In',
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 18,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       body: TabBarView(
//         controller: _tabController,
//         children: [
//           CreateUser(
//             animate: changeMytab,
//           ),
//           SignIn(
//             animate: changeMytab,
//           ),
//         ],
//       ),
//     );
//   }
// }
