import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testapp/home.dart';
import 'package:testapp/kube.dart';
import 'package:testapp/docker.dart';
import 'package:testapp/splashscreen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'DevOPs App',
      debugShowCheckedModeBanner: false,
      initialRoute: "splashscreen",
      //home: MyHome(),
      routes: {
        "home" : (context) => MyHome(),
        "kube": (context) => MyKube(),
        "docker" : (context) => MyDoc(),
        "splashscreen": (context)=> MySplash(),
    })
      
  );
}
