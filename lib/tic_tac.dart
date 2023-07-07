import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: home(),
  ));
}

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List l = ["", "", "", "", "", "", "", "", ""];
  int i = 0, z = 0, a = 0,cnt=0;
  String msg = "Game is runing";

  @override
  get(int a)
  {
    if(cnt % 2==0)
      {
        a=Random().nextInt(9);
        l[a]="x";
      cnt++;

      }
    else{
      l[a]="o";
      cnt++;

    }
    Win();
    setState(() {

    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("tic tac toe"),
      ),
      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            InkWell(
              onTap: () {
                setval(0);
              },
              child: Container(
                child: Text(
                  "${l[0]}",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                alignment: Alignment.center,
                height: 60,
                width: 60,
                color: Colors.black12,
                margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              ),
            ),
            InkWell(
              onTap: () {
                setval(1);
              },
              child: Container(
                child: Text(
                  "${l[1]}",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                alignment: Alignment.center,
                height: 60,
                width: 60,
                color: Colors.black12,
                margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
              ),
            ),
            InkWell(
              onTap: () {
                setval(2);
              },
              child: Container(
                child: Text(
                  "${l[2]}",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                alignment: Alignment.center,
                height: 60,
                width: 60,
                color: Colors.black12,
                margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
              ),
            ),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setval(3);
                },
                child: Container(
                  child: Text(
                    "${l[3]}",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  alignment: Alignment.center,
                  height: 60,
                  width: 60,
                  color: Colors.black12,
                  margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                ),
              ),
              InkWell(
                onTap: () {
                  setval(4);

                  setState(() {});
                },
                child: Container(
                  child: Text(
                    "${l[4]}",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  alignment: Alignment.center,
                  height: 60,
                  width: 60,
                  color: Colors.black12,
                  margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
                ),
              ),
              InkWell(
                onTap: () {
                  setval(5);
                },
                child: Container(
                  child: Text(
                    "${l[5]}",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  alignment: Alignment.center,
                  height: 60,
                  width: 60,
                  color: Colors.black12,
                  margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setval(6);
                },
                child: Container(
                    child: Text(
                      "${l[6]}",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    alignment: Alignment.center,
                    height: 60,
                    width: 60,
                    color: Colors.black12,
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 0)),
              ),
              InkWell(
                onTap: () {
                  setval(7);
                },
                child: Container(
                  child: Text(
                    "${l[7]}",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  alignment: Alignment.center,
                  height: 60,
                  width: 60,
                  color: Colors.black12,
                  margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
                ),
              ),
              InkWell(
                onTap: () {
                  setval(8);
                  setState(() {});
                },
                child: Container(
                  child: Text(
                    "${l[8]}",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  alignment: Alignment.center,
                  height: 60,
                  width: 60,
                  color: Colors.black12,
                  margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(flex: 3,
                child: Container(
                  child: Text(
                    "${msg}",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  alignment: Alignment.center,
                  height: 60,
                  width: 200,
                  color: Colors.black12,
                  margin: EdgeInsets.all(30),
                ),
              ),
              InkWell(
                onTap: () {

                  for (int i = 0; i < 9; i++) {
                      l[i] = "";
                    }
                  setState(() {});

                },
                child: Container(
                  child: Text(
                    "RESET",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  alignment: Alignment.center,
                  height: 60,
                  width: 100,
                  color: Colors.black12,
                  margin: EdgeInsets.all(30),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Win() {
    if (l[0] == "o" && l[1] == "o" && l[2] == "o" ||
        l[3] == "o" && l[4] == "o" && l[5] == "o" ||
        l[6] == "o" && l[7] == "o" && l[8] == "o" ||
        l[2] == "o" && l[4] == "o" && l[6] == "o" ||
        l[0] == "o" && l[3] == "o" && l[6] == "o" ||
        l[1] == "o" && l[4] == "o" && l[7] == "o" ||
        l[2] == "o" && l[5] == "o" && l[8] == "o") {
      msg = "o is win";
      for (int i = 0; i < 9; i++) {
        if (l[i] == "") {
          l[i] = "";
        }
      }
    } else if (l[0] == "X" && l[1] == "X" && l[2] == "X" ||
        l[3] == "X" && l[4] == "X" && l[5] == "X" ||
        l[6] == "X" && l[7] == "X" && l[8] == "X" ||
        l[2] == "X" && l[4] == "X" && l[6] == "X" ||
        l[0] == "X" && l[3] == "X" && l[6] == "X" ||
        l[1] == "X" && l[4] == "X" && l[7] == "X" ||
        l[2] == "X" && l[5] == "X" && l[8] == "X") {
      msg = "x is win";
      for (int i = 0; i < 9; i++) {
        if (l[i] == "") {
          l[i] = "";
        }
      }
    }
  }

  void setval(int i) {
    z++;

    l[i] = "o";
    if (z < 5) {
      while (true) {
        a = Random().nextInt(9);
        if (l[a] == "") {
          l[a] = "X";
          break;
        }
      }
    }
    setState(() {});
    print(l);
    print(a);
    Win();
  }
}
