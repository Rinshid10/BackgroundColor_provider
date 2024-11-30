import 'package:bagroundcolor/controller/bagroundProivder.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<backgroundChage>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: value.getTheColor.elementAt(value.colors),
        appBar: AppBar(),
        body: Column(
          children: [
            Text(value.getTheColor.length.toString()),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    value.addColor();
                  },
                  child: const Text("Click Here To ChangeColor")),
            ),
          ],
        ),
      ),
    );
  }
}
