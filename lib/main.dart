import 'package:flutter/material.dart';
import 'package:prajwol/First.dart';
import 'package:prajwol/Login.dart';
import './secondscreen.dart';
import './First.dart';
import './Third.dart';
import './Login.dart';

void main() {
  runApp(MaterialApp(routes: {
    '/First': (_) => First(),
    '/second': (_) => second(),
    '/Third': (_) => Search(),
    '/Login': (_) => Login(),
  }, debugShowCheckedModeBanner: false, title: 'container', home: Login()));
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("youtube"),
//         backgroundColor: Color.fromARGB(255, 214, 34, 21),
//         actions: [
//           IconButton(onPressed: () {}, icon: const Icon(Icons.volume_up)),
//           IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
//         ],
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Color.fromARGB(255, 214, 34, 21),
//               ),
//               child: Text(
//                 'Hello Prajwol',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 20,
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: Icon(Icons.message),
//               title: Text('Messages'),
//               //  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>second()));,
//             ),
//             ListTile(
//               leading: Icon(Icons.account_circle),
//               title: Text('Profile'),
//             ),
//             ListTile(
//               leading: Icon(Icons.settings),
//               title: Text('Settings'),
//               onTap: () {
//                 Navigator.of(context).pushNamed('/second');
//               },
//             ),
//           ],
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Row(
//           children: [
//             Column(
//               children: [
//                 Container(
//                   child: Text('video 1'),
//                   height: 250,
//                   width: MediaQuery.of(context).size.width - 30,
//                   padding: EdgeInsets.fromLTRB(10, 4, 10, 4),
//                   color: Colors.blue,
//                   margin: EdgeInsets.fromLTRB(10, 4, 10, 4),
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Column(children: [
//                       Text(
//                         "shorts",
//                         textAlign: TextAlign.left,
//                       )
//                     ]),
//                     Row(children: [
//                       Container(
//                           height: 200,
//                           child: SingleChildScrollView(
//                               child: Row(children: [
//                             SizedBox(
//                                 height: 200,
//                                 width: MediaQuery.of(context).size.width - 30,
//                                 child: ListView(
//                                     scrollDirection: Axis.horizontal,
//                                     children: [
//                                       Container(
//                                         child: Text("shorts 1"),
//                                         margin: EdgeInsets.all(1.0),
//                                         height: 150,
//                                         width: 100,
//                                         color: Colors.orange,
//                                       ),
//                                       Container(
//                                         child: Text("shorts 1"),
//                                         margin: EdgeInsets.all(1.0),
//                                         height: 150,
//                                         width: 100,
//                                         color: Colors.orange,
//                                       ),
//                                       Container(
//                                         child: Text("shorts 1"),
//                                         margin: EdgeInsets.all(1.0),
//                                         height: 150,
//                                         width: 100,
//                                         color: Colors.orange,
//                                       ),
//                                       Container(
//                                         child: Text("shorts 1"),
//                                         margin: EdgeInsets.all(1.0),
//                                         height: 150,
//                                         width: 100,
//                                         color: Colors.orange,
//                                       ),
//                                       Container(
//                                         child: Text("shorts 1"),
//                                         margin: EdgeInsets.all(1.0),
//                                         height: 150,
//                                         width: 100,
//                                         color: Colors.orange,
//                                       ),
//                                       Container(
//                                         child: Text("shorts 1"),
//                                         margin: EdgeInsets.all(1.0),
//                                         height: 150,
//                                         width: 100,
//                                         color: Colors.orange,
//                                       ),
//                                       Container(
//                                         child: Text("shorts 1"),
//                                         margin: EdgeInsets.all(1.0),
//                                         height: 150,
//                                         width: 100,
//                                         color: Colors.orange,
//                                       ),
//                                     ]))
//                           ])))
//                     ])
//                   ],
//                 ),
//                 Container(
//                     child: Text('video2'),
//                     height: 250,
//                     width: MediaQuery.of(context).size.width - 30,
//                     color: Colors.pink,
//                     margin: EdgeInsets.fromLTRB(10, 4, 10, 4)),
//                 Container(
//                     child: Text('video2'),
//                     height: 250,
//                     width: MediaQuery.of(context).size.width - 30,
//                     color: Colors.pink,
//                     margin: EdgeInsets.fromLTRB(10, 4, 10, 4)),
//                 Container(
//                     child: Text('video2'),
//                     height: 250,
//                     width: MediaQuery.of(context).size.width - 30,
//                     color: Colors.pink,
//                     margin: EdgeInsets.fromLTRB(10, 4, 10, 4)),
//               ],
//             )
//           ],
//         ),
//       ),
//       backgroundColor: Color.fromARGB(255, 238, 238, 238),
//       bottomNavigationBar:
//           BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
//         BottomNavigationBarItem(
//             icon: Icon(Icons.home_max_outlined), label: 'home'),
//         BottomNavigationBarItem(icon: Icon(Icons.add_a_photo), label: 'add'),
//         BottomNavigationBarItem(
//             icon: Icon(Icons.access_alarm_outlined), label: 'bell'),
//         BottomNavigationBarItem(
//             icon: Icon(Icons.account_circle_rounded), label: 'account'),
//       ]),
//     );
//   }
// }
