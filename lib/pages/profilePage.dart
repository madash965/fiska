import 'package:fiska/models/user.dart';
import 'package:fiska/widgets/sliverBoxWidget.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final User user;
  ProfilePage({Key key, this.user});
  @override
  Widget build(BuildContext context) {
    List _text = [
      "Orders",
      "Reviews",
      "Voucher/Coupon",
      "Saved Items",
      "Recently Viewed",
      "Become A Seller"
    ];
    List _text2 = ["Details", "Address", "Change Password"];
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0.0,
      //   title: Text(
      //     'Profile',
      //     style: TextStyle(
      //       color: Colors.black,
      //       fontSize: 28,
      //     ),
      //   ),
      //   iconTheme: IconThemeData(color: Colors.black),
      //   backgroundColor: Colors.white,
      // ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 9),
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(9.0),
                child: Center(
                  child: Text(
                    'Hello user',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 9, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.orange[300],
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(11.0),
                child: Text(
                  'Account',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(9, 0, 9, 0),
              height: MediaQuery.of(context).size.height / 2.15,
              child: ListView.builder(
                itemBuilder: (_, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3.0),
                  child: ListTile(
                    tileColor: Colors.black12,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    //visualDensity: VisualDensity(vertical: -2.0),
                    title: Text(
                      '${_text[index]}',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {},
                  ),
                ),
                itemCount: _text.length,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 9, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.orange[300],
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(11.0, 11.0, 11, 11),
                child: Text(
                  'Settings',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 4.3,
              decoration: BoxDecoration(
                //color: Colors.black12,
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: EdgeInsets.fromLTRB(9, 0, 9, 0),
              child: ListView.builder(
                itemBuilder: (_, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: ListTile(
                    tileColor: Colors.black12,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    //visualDensity: VisualDensity(vertical: -2.0),
                    title: Text(
                      '${_text2[index]}',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {},
                  ),
                ),
                itemCount: _text2.length,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: Colors.red,
            onPressed: () {},
            child: Text(
              'Log Out',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
