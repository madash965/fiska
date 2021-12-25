import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.deepOrange,
        ),
        elevation: 2.0,
        title: Text(
          'Catergory',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                actionsToolBar,
                Expanded(child: Container(width: 100, color: Colors.green)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget get actionsToolBar => Container(
      padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
      width: 80,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        _actionToolBarIcons(icon: EvaIcons.phone, title: 'Phones'),
        _actionToolBarIcons(icon: EvaIcons.home, title: 'Accessorie '),
        _actionToolBarIcons(icon: EvaIcons.printerOutline, title: 'Computers'),
        _actionToolBarIcons(icon: EvaIcons.umbrellaOutline, title: 'Caps'),
        _actionToolBarIcons(icon: EvaIcons.tvOutline, title: 'Cinema'),
        _actionToolBarIcons(icon: EvaIcons.videoOutline, title: 'Media'),
        _actionToolBarIcons(icon: EvaIcons.settings2, title: 'Services'),
        _actionToolBarIcons(icon: Icons.phone, title: 'Phones'),
      ]),
    );

Widget _actionToolBarIcons({
  String title,
  IconData icon,
}) {
  return Container(
      width: 60,
      height: 60,
      child: Column(
        children: [
          Icon(icon, size: 30.0, color: Colors.orange),
          Padding(
              padding: EdgeInsets.only(top: 2.0),
              child: Text(
                title,
                style: TextStyle(fontSize: 12.0),
              )),
        ],
      ));
}
