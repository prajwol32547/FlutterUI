import 'package:flutter/material.dart';
import './secondscreen.dart';

class Search extends StatefulWidget {
  @override
  SearchState createState() => SearchState();
}

class SearchState extends State<Search> {
  String name = "";
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
            '',
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Color.fromARGB(255, 214, 34, 21),
        title: Center(
            child: SizedBox(
                height: 40,
                child: TextField(
                  onChanged: (val) {
                    setState(() {
                      name = val;
                    });
                  },
                  autofocus: true,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color.fromARGB(255, 245, 108, 98),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none)),
                ))),
        actions: [
          Icon(Icons.mic_outlined),
          Padding(padding: EdgeInsets.all(5.0))
        ],
      ),
      body: Container(child: Text('$name')),
    );
  }
}
