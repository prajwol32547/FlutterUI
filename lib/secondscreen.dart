import 'package:flutter/material.dart';

class second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton.icon(
          icon: Icon(
            Icons.arrow_back_outlined,
            color: Colors.white,
          ),
          label: Text(
            'back',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        leadingWidth: 100,
        backgroundColor: Color.fromARGB(255, 214, 34, 21),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Account setting'),
            leading: Icon(Icons.person_add_alt_1_outlined),
            horizontalTitleGap: 10,
            minVerticalPadding: 20,
          ),
          ListTile(
            title: Text('General setting'),
            leading: Icon(Icons.settings_accessibility_outlined),
            horizontalTitleGap: 10,
            minVerticalPadding: 20,
          ),
          ListTile(
            title: Text('Privacy'),
            leading: Icon(Icons.privacy_tip_outlined),
            horizontalTitleGap: 10,
            minVerticalPadding: 20,
          ),
          ListTile(
            title: Text('Dark Theme'),
            leading: Icon(Icons.toggle_off_outlined),
            horizontalTitleGap: 10,
            minVerticalPadding: 20,
          )
        ],
        padding: EdgeInsets.all(30.0),
      ),
    );
  }
}
