// ignore_for_file: import_of_legacy_library_into_null_safe, use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers, deprecated_member_use, unused_local_variable, unused_import, unused_element, unnecessary_new, missing_required_param, unnecessary_import

import 'dart:ffi';
import 'dart:ui';

import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void sound(int number) {
      final player = new AudioCache();
      player.play("note$number.wav");
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("xylophone"),
        ),
        body: Container(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    child: Text(
                      "A",
                      style: TextStyle(fontSize: 50, color: Colors.white),
                    ),
                    color: Colors.red,
                    splashColor: Colors.green,
                    onPressed: () {
                      sound(1);
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    child: Text(
                      "B",
                      style: TextStyle(fontSize: 50, color: Colors.white),
                    ),
                    color: Color.fromARGB(255, 139, 54, 244),
                    splashColor: Colors.pink,
                    onPressed: () {
                      sound(2);
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    child: Text(
                      "C",
                      style: TextStyle(fontSize: 50, color: Colors.white),
                    ),
                    color: Colors.yellow,
                    splashColor: Colors.blue,
                    onPressed: () {
                      sound(3);
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    child: Text(
                      "D",
                      style: TextStyle(fontSize: 50, color: Colors.white),
                    ),
                    color: Colors.purple,
                    splashColor: Colors.yellow,
                    onPressed: () {
                      sound(4);
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    child: Text(
                      "E",
                      style: TextStyle(fontSize: 50, color: Colors.white),
                    ),
                    color: Colors.blue,
                    splashColor: Colors.orange,
                    onPressed: () {
                      sound(5);
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    child: Text(
                      "F",
                      style: TextStyle(fontSize: 50, color: Colors.white),
                    ),
                    color: Colors.pink,
                    splashColor: Colors.purple,
                    onPressed: () {
                      sound(6);
                    },
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    child: Text(
                      "G",
                      style: TextStyle(fontSize: 50, color: Colors.white),
                    ),
                    color: Color.fromARGB(255, 117, 244, 54),
                    splashColor: Colors.red,
                    onPressed: () {
                      sound(7);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}