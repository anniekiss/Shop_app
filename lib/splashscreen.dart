import 'package:flutter/material.dart';
import 'package:shop_app/common_widgets/main_button.dart';
import 'package:shop_app/dashboard.dart';
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
          body: Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/bg.png",
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 80,
                  left: 20,
                  child: Image.asset(
                    "assets/images/logo.png",
                    width: 80,
                    height: 80,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.7,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 70),
                    decoration: const BoxDecoration(
                      color: Color(0xffF6F5F5),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/images/Icon.png",
                          width: 60,
                          height: 60,
                        ),
                        Text(
                          'Non-Contact Deliveries',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xff2D0C57),
                              fontSize: 34,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'When placing an order, select the option “Contactless delivery” and the courier will leave your order at the door.',
                          textAlign: TextAlign.center,
                        ),
                        CustomElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Dashboard()));
                          },
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Dismiss',
                              style: TextStyle(color: Colors.black38),
                            ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
