import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import './First.dart';

class Login extends StatefulWidget {
  @override
  Loginstate createState() => Loginstate();
}

class Loginstate extends State<Login> {
  String email = "";
  String password = "";
  var isob = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Center(child: Text('sign in')),
            backgroundColor: Color.fromARGB(255, 214, 34, 21)),
        body: SingleChildScrollView(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 50, 0, 30),
                child: Center(
                  child: Text(
                    "Log in",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 30,
                        color: Color.fromARGB(255, 214, 34, 21)),
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 30),
                  child: SizedBox(
                    height: 100,
                    width: MediaQuery.of(context).size.width - 30,
                    child: Column(
                      children: [
                        Text("Email"),
                        Container(
                          child: TextField(
                            onChanged: (val) {
                              setState(() {
                                email = val;
                              });
                            },
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.transparent,
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Color.fromARGB(255, 214, 34, 21),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )),
                          ),
                        )
                      ],
                    ),
                  )),
              Container(
                  child: SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width - 30,
                child: Column(
                  children: [
                    Text("password"),
                    Container(
                      child: TextField(
                        obscureText: isob,
                        onChanged: (val) {
                          setState(() {
                            password = val;
                          });
                        },
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.transparent,
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Color.fromARGB(255, 214, 34, 21),
                            ),
                            suffixIcon: InkWell(
                                onTap: () {
                                  setState(() {
                                    if (isob == true) {
                                      isob = false;
                                    } else {
                                      isob = true;
                                    }
                                  });
                                },
                                child: Icon(Icons.remove_red_eye)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            )),
                      ),
                    )
                  ],
                ),
              )),
              Container(
                  width: MediaQuery.of(context).size.width - 70,
                  margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: SizedBox(
                      height: 50,
                      width: 200,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (email == "prajwol" && password == "1234") {
                                Navigator.of(context).pushNamed('/First');
                              } else {
                                showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                          title: Text("credential fail"),
                                          content: Text("Retry?"),
                                          actions: [
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Text("yes")),
                                            TextButton(
                                                onPressed: () {
                                                  SystemNavigator.pop();
                                                },
                                                child: Text("no"))
                                          ],
                                        ));
                              }
                            });
                          },
                          child: Text(
                            "sign in",
                            textScaleFactor: 1.6,
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Color.fromARGB(255, 214, 34, 21)),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0)),
                              ))))),
              Container(
                  margin: EdgeInsets.only(top: 30),
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "you haven't registered Yet?",
                          style: TextStyle(color: Colors.black, fontSize: 16)),
                      TextSpan(
                          text: "signup",
                          style: TextStyle(color: Colors.blue, fontSize: 16))
                    ]),
                  )),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text("Forgot Password?",
                    style: TextStyle(
                      color: Colors.blue,
                    )),
              )
            ],
          ),
        )));
  }
}
