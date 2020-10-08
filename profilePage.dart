import 'package:fiska/widgets/sliverListViewWidget.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
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
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 45.0,
              child: Container(
                child: Center(
                  child: Text(
                    'Hello User',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverBoxWidget(
            text: 'Account',
            boxHeight: 37.0,
            color: Color(0XFFFFFFFF),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              child: Container(
                margin: EdgeInsets.fromLTRB(9, 0, 9, 0),
                height: MediaQuery.of(context).size.height / 2.3,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ListView.builder(
                  itemBuilder: (_, index) => ListTile(
                    visualDensity: VisualDensity(vertical: -2.0),
                    title: Text(
                      '${_text[index]}',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {},
                  ),
                  itemCount: _text.length,
                ),
              ),
            ),
          ),
          SliverBoxWidget(
            text: 'Settings',
            boxHeight: 37.0,
            color: Color(0XFFFFFFFF),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 4.4,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                margin: EdgeInsets.fromLTRB(9, 0, 9, 0),
                child: ListView.builder(
                  itemBuilder: (_, index) => ListTile(
                    visualDensity: VisualDensity(vertical: -2.0),
                    title: Text(
                      '${_text2[index]}',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    trailing: Icon(Icons.arrow_right),
                    onTap: () {},
                  ),
                  itemCount: _text2.length,
                ),
              ),
            ),
          ),
        ],
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
