import 'package:flutter/material.dart';

class BtSearch extends StatefulWidget implements PreferredSizeWidget {
  @override
  BtSearchState createState() => BtSearchState();

  @override
  Size get preferredSize {
    return new Size.fromHeight(60.0);
  }
}

class BtSearchState extends State<BtSearch> {
  bool btSwitch = false;

  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Bluetooth Device Search'),
      actions: <Widget>[
        Switch(
          value: btSwitch,
          activeColor: Colors.red,
          onChanged: (bool newValue) {
            setState(() {
              btSwitch = newValue;
            });
          },
        ),
      ],
    );
  }
}