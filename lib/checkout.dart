import 'package:flutter/material.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

bool isSwitched = false;

int isSelected = 0;

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Checkout")),
      ),
      backgroundColor: Color(0xffF6F5F5),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Payment method",
                  style: TextStyle(
                      color: Color(0xff2D0C57),
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "CHANGE",
                  style: TextStyle(
                      color: Color(0xff7203FF),
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 13,
            ),
            Row(
              children: [
                Icon(
                  Icons.credit_card,
                  color: Colors.grey,
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                RichText(
                  text: TextSpan(
                    text: "",
                    children: [
                      TextSpan(
                          text: "**** **** **** 4747",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff9586A8),
                          ))
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 27,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Delivery address",
                  style: TextStyle(
                      color: Color(0xff2D0C57),
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "CHANGE",
                  style: TextStyle(
                      color: Color(0xff7203FF),
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
            ),
            Row(
              children: [
                Icon(
                  Icons.home,
                  color: Colors.grey,
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                RichText(
                  text: TextSpan(
                    text: "",
                    children: [
                      TextSpan(
                          text:
                              "\n\nAlexandra Smith \nCesu 31 k-2 5.st, SIA Chili \nRiga \nLV–1012 \nLatvia",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff9586A8),
                          ))
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Delivery options",
                  style: TextStyle(
                      color: Color(0xff2D0C57),
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  "CHANGE",
                  style: TextStyle(
                      color: Color(0xff7203FF),
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelected = 0;
                });
              },
              child: Row(
                children: [
                  Icon(
                    Icons.nordic_walking_outlined,
                    color: Color(0xff9586A8),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  Text(
                    "I’ll pick it up myself",
                    style: TextStyle(color: Color(0xff9586A8)),
                  ),
                  if (isSelected == 0) ...[
                    Spacer(),
                    Icon(
                      Icons.check,
                      color: Color(0xff7203FF),
                    ),
                  ]
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelected = 1;
                });
              },
              child: Row(
                children: [
                  Icon(
                    Icons.motorcycle,
                    color: Color(0xff9586A8),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  Text(
                    "By courier",
                    style: TextStyle(color: Color(0xff9586A8)),
                  ),
                  if (isSelected == 1) ...[
                    Spacer(),
                    Icon(
                      Icons.check,
                      color: Color(0xff7203FF),
                    ),
                  ]
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelected = 2;
                });
              },
              child: Row(
                children: [
                  Icon(
                    Icons.car_rental,
                    color: isSelected == 2 ? Color(0xff7203FF) : Colors.grey,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  Text(
                    "By Drone",
                    style: TextStyle(color: Color(0xff7203FF)),
                  ),
                  if (isSelected == 2) ...[
                    Spacer(),
                    Icon(
                      Icons.check,
                      color: Color(0xff7203FF),
                    ),
                  ]
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Non-contact-delivery",
                  style: TextStyle(
                      color: Color(0xff2D0C57),
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
