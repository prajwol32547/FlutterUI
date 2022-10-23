import 'package:flutter/material.dart';
import './secondscreen.dart';
import './Third.dart';
import './Login.dart';

class First extends StatelessWidget {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("youtube"),
        backgroundColor: Color.fromARGB(255, 214, 34, 21),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.volume_up)),
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/Third');
              },
              icon: Icon(Icons.search)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 214, 34, 21),
              ),
              child: Center(
                  child: Text(
                'Hello Prajwol',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              )),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
              //  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>second()));,
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
              onTap: () {
                Navigator.pop(context);

                Navigator.of(context).pushNamed('/Login');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);

                Navigator.of(context).pushNamed('/second');
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  child: Text('video 1'),
                  height: 250,
                  width: MediaQuery.of(context).size.width - 30,
                  padding: EdgeInsets.fromLTRB(10, 4, 10, 4),
                  color: Colors.blue,
                  margin: EdgeInsets.fromLTRB(10, 4, 10, 4),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(children: [
                      Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            "shorts",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ))
                    ]),
                    Row(children: [
                      Container(
                          height: 200,
                          child: SingleChildScrollView(
                              child: Row(children: [
                            SizedBox(
                                height: 200,
                                width: MediaQuery.of(context).size.width - 30,
                                child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      Container(
                                        child: Text("shorts 1"),
                                        margin: EdgeInsets.all(1.0),
                                        height: 150,
                                        width: 100,
                                        color: Colors.orange,
                                      ),
                                      Container(
                                        child: Text("shorts 1"),
                                        margin: EdgeInsets.all(1.0),
                                        height: 150,
                                        width: 100,
                                        color: Colors.orange,
                                      ),
                                      Container(
                                        child: Text("shorts 1"),
                                        margin: EdgeInsets.all(1.0),
                                        height: 150,
                                        width: 100,
                                        color: Colors.orange,
                                      ),
                                      Container(
                                        child: Text("shorts 1"),
                                        margin: EdgeInsets.all(1.0),
                                        height: 150,
                                        width: 100,
                                        color: Colors.orange,
                                      ),
                                      Container(
                                        child: Text("shorts 1"),
                                        margin: EdgeInsets.all(1.0),
                                        height: 150,
                                        width: 100,
                                        color: Colors.orange,
                                      ),
                                      Container(
                                        child: Text("shorts 1"),
                                        margin: EdgeInsets.all(1.0),
                                        height: 150,
                                        width: 100,
                                        color: Colors.orange,
                                      ),
                                      Container(
                                        child: Text("shorts 1"),
                                        margin: EdgeInsets.all(1.0),
                                        height: 150,
                                        width: 100,
                                        color: Colors.orange,
                                      ),
                                    ]))
                          ])))
                    ])
                  ],
                ),
                Container(
                    child: Text('video2'),
                    height: 250,
                    width: MediaQuery.of(context).size.width - 30,
                    color: Color.fromARGB(255, 11, 196, 11),
                    margin: EdgeInsets.fromLTRB(10, 4, 10, 4)),
                Container(
                    child: Text('video3'),
                    height: 250,
                    width: MediaQuery.of(context).size.width - 30,
                    color: Color.fromARGB(255, 15, 15, 15),
                    margin: EdgeInsets.fromLTRB(10, 4, 10, 4)),
                Container(
                    child: Text('video5'),
                    height: 250,
                    width: MediaQuery.of(context).size.width - 30,
                    color: Color.fromARGB(255, 119, 153, 161),
                    margin: EdgeInsets.fromLTRB(10, 4, 10, 4)),
                Container(
                    child: Text('vide0 6'),
                    height: 250,
                    width: MediaQuery.of(context).size.width - 30,
                    color: Color.fromARGB(255, 212, 221, 223),
                    margin: EdgeInsets.fromLTRB(10, 4, 10, 4)),
                Container(
                    child: Text('video 7'),
                    height: 250,
                    width: MediaQuery.of(context).size.width - 30,
                    color: Color.fromARGB(255, 26, 31, 32),
                    margin: EdgeInsets.fromLTRB(10, 4, 10, 4)),
                Container(
                    child: Text('video 8'),
                    height: 250,
                    width: MediaQuery.of(context).size.width - 30,
                    color: Color.fromARGB(255, 238, 190, 32),
                    margin: EdgeInsets.fromLTRB(10, 4, 10, 4)),
              ],
            )
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 238, 238, 238),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: ((value) {
            _currentIndex = value;
            print(_currentIndex);
          }),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_max_outlined), label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_a_photo), label: 'add'),
            BottomNavigationBarItem(
                icon: Icon(Icons.access_alarm_outlined), label: 'bell'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_rounded), label: 'account'),
          ]),
    );
  }
}
