import 'package:flutter/material.dart';
import 'package:planet_x/home.dart';

void main() => runApp(new MaterialApp(
      title: "Weight On Planets",
      home: MyApp(),
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.red,
          accentColor: Colors.redAccent),
    ),
);
