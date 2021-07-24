import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:fiska/models/user.dart';
import 'package:fiska/widgets/sliverBoxWidget.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final User user;
  ProfilePage({Key key, this.user});
  @override
  Widget build(BuildContext context) {
    Map _text = {
      "Orders": Icons.bus_alert_outlined,
      "Reviews": Icons.chat_outlined,
      "Voucher/Coupon": Icons.money,
      "Saved Items": EvaIcons.heart,
      "Recently Viewed": Icons.skip_previous,
      "Become A Seller": Icons.shop,
    };
    Map _text2 = {
      "Details": Icons.details_outlined,
      "Address": Icons.location_city,
      "Change Password": Icons.password
    };
    return Scaffold(
      // appBar: AppBar(
      //   flexibleSpace: Container(
      //     height: 200,
      //   ),
      //   elevation: 0.0,
      //   leading: Padding(
      //     padding: EdgeInsets.all(8.0),
      //     child: CircleAvatar(
      //       radius: 35,
      //       backgroundColor: Colors.orange[300],
      //       child: Icon(
      //         Icons.account_circle,
      //         size: 60,
      //         color: Colors.white,
      //       ),
      //     ),
      //   ),
      //   title: Text(
      //     'Welcome User',
      //     style: TextStyle(
      //       color: Colors.black,
      //       fontSize: 28,
      //     ),
      //   ),
      //   iconTheme: IconThemeData(color: Colors.black),
      //   backgroundColor: Colors.white,
      // ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 37,
            vertical: MediaQuery.of(context).size.width / 37,
          ),
          color: Colors.grey[100],
          child: ListView(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,

            //mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 37,
                  vertical: MediaQuery.of(context).size.width / 37,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome\nUser',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      //color: Colors.transparent,
                      width: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.orange[300],
                        child: Icon(
                          Icons.account_circle,
                          size: 60,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.transparent,
                height: 10,
              ),
              Container(
                //height: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                //padding: EdgeInsets.fromLTRB(9, 0, 9, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 8),
                      child: Text(
                        'Accounts',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 22.0,
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 2,
                      endIndent: 3,
                      indent: 3,
                      color: Colors.black12,
                    ),
                    ListView.builder(
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) => buildListTile(
                        _text.values.elementAt(index),
                        _text.keys.elementAt(index),
                      ),
                      itemCount: _text.length,
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.transparent,
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                //padding: EdgeInsets.fromLTRB(9, 0, 9, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 8),
                      child: Text(
                        'Settings',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 22.0,
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 2,
                      endIndent: 3,
                      indent: 3,
                      color: Colors.black12,
                    ),
                    ListView.builder(
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) => buildListTile(
                        _text2.values.elementAt(index),
                        _text2.keys.elementAt(index),
                      ),
                      itemCount: _text2.length,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            primary: Colors.red,
          ),
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
      ),
    );
  }

  ListTile buildListTile(var icon, String text) {
    return ListTile(
      tileColor: Colors.black54,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      //visualDensity: VisualDensity(vertical: -2.0),
      leading: Icon(
        icon,
        size: 20,
        color: Colors.black,
      ),
      title: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: Icon(Icons.arrow_right),
      onTap: () {},
    );
  }

  Container buildGridTile(var icon, String subtitle) {
    return Container(
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.orange[300],
          shape: CircleBorder(),
        ),
        onPressed: () {},
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              child: Icon(
                icon,
                size: 27,
                color: Colors.white,
              ),
              radius: 27,
              backgroundColor: Colors.orange[300],
            ),
            Divider(color: Colors.transparent, height: 5),
            Text(
              subtitle,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16.0,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
