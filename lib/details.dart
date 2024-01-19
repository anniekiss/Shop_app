import 'package:flutter/material.dart';
import 'package:shop_app/common_widgets/main_button.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Image.asset(
              "assets/images/vegetable.png",
              fit: BoxFit.cover,
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
                Column(
                  children: [
                    Text(
                      'Boston Lettuce',
                      style: TextStyle(
                          color: Color(0xff2D0C57),
                          fontSize: 34,
                          fontWeight: FontWeight.bold),
                    ),
                    RichText(
                      text: const TextSpan(
                        text: "1.10",
                        children: [
                          TextSpan(text: " / piece"),
                        ],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          color: Color(0xff9586A8),
                        ),
                      ),
                    ),
                    Text(
                      "~ 150 gr / piece",
                      style: TextStyle(
                        color: Color(0xff06BE77),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Spain',
                      style: TextStyle(
                          color: Color(0xff2D0C57),
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can also be grilled.',
                      style: TextStyle(
                        fontSize: 17,
                        color: Color(0xff9586A8),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          child: Icon(Icons.favorite),
                        ),
                        CustomElevatedButton(
                          onPressed: () {},
                          width: 100,
                          label: Icon(Icons.shopping_cart),
                          //Text('ADD TO CART'),
                        ),
                      ],
                    ),
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
