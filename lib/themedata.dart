
import 'package:flutter/material.dart';

bool night=false;

ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.deepOrange,
    primarySwatch: Colors.deepOrange,
    accentColor: Colors.deepOrange,
    cursorColor: Colors.deepOrange
);

ThemeData light = new ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.orange,
  primaryColor: Colors.orange,
  accentColor: Colors.orange,
  cursorColor: Colors.orange,
);

ThemeData themechooser(){
  if(night)
    return dark;
  else
    return light;


}