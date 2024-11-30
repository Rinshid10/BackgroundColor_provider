import 'package:flutter/material.dart';

class backgroundChage extends ChangeNotifier {
  int colors = 0;
  List getTheColor = [
    Colors.red,
    Colors.green,
    Colors.grey,
    Colors.black12,
    Colors.teal,
    Colors.blue
  ];
 
  void addColor() {
    colors = (colors + 1) % getTheColor.length;
    notifyListeners();
  }
}

