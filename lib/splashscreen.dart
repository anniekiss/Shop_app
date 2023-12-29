import 'package:flutter/material.dart';
import 'package:shop_app/main.dart';

void main() {
  runApp(const MyApp());
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(162, 89, 255, 1),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Positioned(
                  top: 50,
                  left: 10,
                  child: Image.asset(
                    "assets/images/logo.png",
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 200,
                  child: Image.asset("assets/images/ellpse.png"),
                  height: 50,
                  width: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
