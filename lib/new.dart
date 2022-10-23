import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false, title: "prajwol", home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Menu")),
        body: Column(children: [
          Image.network("https://prajwollama.com.np/heroo.jpg"),
          Card(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "prajwolsherpa223@gmail.com",
              textScaleFactor: 1.5,
              overflow: TextOverflow.ellipsis,
            ),
          )),
          Card(
              child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: RichText(
                    text: TextSpan(
                        text: "welcome",
                        style: TextStyle(color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text: " To",
                              style:
                                  TextStyle(color: Colors.pink, fontSize: 30))
                        ]),
                  )))
        ]));
  }
}
