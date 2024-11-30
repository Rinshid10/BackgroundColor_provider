import 'package:bagroundcolor/controller/bagroundProivder.dart';
import 'package:bagroundcolor/view/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => backgroundChage(),
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
