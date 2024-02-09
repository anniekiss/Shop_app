import 'package:flutter/material.dart';
import 'package:shop_app/common_widgets/main_button.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController cardController = TextEditingController();
  TextEditingController cvcController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Color(0xffF6F5F5),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Credit / Debit card",
                style: TextStyle(
                    color: Color(0xff2D0C57),
                    fontSize: 28,
                    fontWeight: FontWeight.w700),
              ),
              Stack(
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        gradient: LinearGradient(
                          // Where the linear gradient begins and ends
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          // Add one stop for each color. Stops should increase from 0 to 1
                          stops: [0.1, 0.5, 0.7, 0.9],
                          colors: [
                            // Colors are easy thanks to Flutter's Colors class.
                            Colors.indigo.withOpacity(0.6),
                            Colors.indigo.withOpacity(0.4),
                            Colors.purple.withOpacity(0.3),
                            Colors.purple.withOpacity(0.4)
                          ],
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                  ),
                  Positioned(
                    top: -100,
                    right: -150,
                    child: Container(
                      width: 400,
                      height: 400,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(0.2)),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Image.asset(
                      "assets/images/mc_symbol.png",
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 20,
                    right: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '1234  1234  1234  1234',
                          style: TextStyle(color: Colors.white, fontSize: 28),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Annie Sylvia',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 23),
                            ),
                            Text('07/26',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 23))
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Image.asset(
                  "assets/images/camera.png",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Name on the card',
                style: TextStyle(color: Colors.grey),
              ),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Alexandra Smith',
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Card number',
                style: TextStyle(color: Colors.grey),
              ),
              TextField(
                controller: numberController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '4747  4747  4747  4747',
                    fillColor: Colors.white,
                    filled: true,
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: SizedBox(
                        width: 20,
                        child: Image.asset(
                          "assets/images/mc_symbol.png",
                        ),
                      ),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Expiry Date',
                          style: TextStyle(color: Colors.grey),
                        ),
                        TextField(
                          controller: cardController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '07/21',
                            fillColor: Colors.white,
                            filled: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CVC',
                          style: TextStyle(color: Colors.grey),
                        ),
                        TextField(
                          controller: cvcController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: '474',
                              fillColor: Colors.white,
                              filled: true,
                              suffixIcon: Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: SizedBox(
                                  width: 20,
                                  child: Image.asset(
                                    "assets/images/Hint.png",
                                  ),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              CustomElevatedButton(
                label: Text("USE THIS CARD"),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
