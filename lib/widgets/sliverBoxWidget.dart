// import 'package:flutter/material.dart';

// class SliverBoxWidget extends StatelessWidget {
//   final Color color;
//   final double boxHeight;
//   final String text;
//   const SliverBoxWidget(
//       {UniqueKey key,
//       @required this.text,
//       @required this.boxHeight,
//       @required this.color})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SliverToBoxAdapter(
//       child: SizedBox(
//         height: boxHeight,
//         child: Container(
//           padding: EdgeInsets.fromLTRB(10.0, 2.0, 0.0, 2.0),
//           child: Text(
//             '$text',
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 25.0,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// child: Container(
//           color: Colors.black12,
//           child: ListView(
//             padding: EdgeInsets.symmetric(horizontal: 10),
//             children: [
//               Container(
//                 //margin: EdgeInsets.symmetric(horizontal: 9),
//                 decoration: BoxDecoration(
//                   color: Colors.black12,
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(5),
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(9.0),
//                   child: Center(
//                     child: Text(
//                       'Hello user',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 25.0,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               // Container(
//               //   padding: EdgeInsets.symmetric(horizontal: 9, vertical: 5),
//               //   decoration: BoxDecoration(
//               //     color: Colors.orange[300],
//               //     borderRadius: BorderRadius.all(
//               //       Radius.circular(5),
//               //     ),
//               //   ),
//               //   child: ListView(
//               //     //crossAxisAlignment: CrossAxisAlignment.start,
//               //     children: [
//               //       Padding(
//               //         padding: const EdgeInsets.all(8.0),
//               //         child: Text(
//               //           'Account',
//               //           style: TextStyle(
//               //             fontWeight: FontWeight.bold,
//               //             fontSize: 22.0,
//               //           ),
//               //         ),
//               //       ),
//               //       GridView.builder(
//               //           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               //               crossAxisCount: 4),
//               //           itemBuilder: (_, index) => Padding(
//               //                 padding: const EdgeInsets.all(8.0),
//               //                 child: Column(
//               //                   children: [
//               //                     CircleAvatar(
//               //                       child: Icon(Icons.account_circle),
//               //                     ),
//               //                     Text(
//               //                       '${_text[index]}',
//               //                       style: TextStyle(
//               //                         fontWeight: FontWeight.w500,
//               //                         fontSize: 12.0,
//               //                       ),
//               //                     ),
//               //                   ],
//               //                 ),
//               //               ),
//               //           itemCount: _text.length)
//               //     ],
//               //   ),
//               // ),
//               Container(
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(18.0),
//                 ),
//                 //padding: EdgeInsets.fromLTRB(9, 0, 9, 0),
//                 //height: MediaQuery.of(context).size.height / 2.15,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 8,
//                         vertical: 3,
//                       ),
//                       child: Text(
//                         'Accounts',
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 22.0,
//                         ),
//                       ),
//                     ),
//                     Divider(
//                       endIndent: 4,
//                       indent: 4,
//                       color: Colors.black12,
//                       thickness: 2,
//                     ),
//                     buildListTile(_text[0]),
//                     buildListTile(_text[1]),
//                     buildListTile(_text[2]),
//                     buildListTile(_text[3]),
//                     buildListTile(_text[4]),
//                     buildListTile(_text[5]),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 10),
//               Container(
//                 //height: MediaQuery.of(context).size.height / 4.3,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(18.0),
//                 ),
//                 //padding: EdgeInsets.fromLTRB(9, 0, 9, 0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 8,
//                         vertical: 3,
//                       ),
//                       child: Text(
//                         'Settings',
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 22.0,
//                         ),
//                       ),
//                     ),
//                     Divider(
//                       endIndent: 4,
//                       indent: 4,
//                       color: Colors.black12,
//                       thickness: 2,
//                     ),
//                     buildListTile(_text2[0]),
//                     buildListTile(_text2[1]),
//                     buildListTile(_text2[2]),
//                     // buildListTile(_text[3]),
//                     // buildListTile(_text[4]),
//                     // buildListTile(_text[5]),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
