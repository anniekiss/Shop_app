import 'package:flutter/material.dart';
import 'package:shop_app/common_widgets/main_button.dart';
import 'package:shop_app/details.dart';
import 'package:shop_app/models/items.dart';

class CateDetails extends StatefulWidget {
  const CateDetails({super.key, required this.title});

  final String title;

  @override
  State<CateDetails> createState() => _CateDetailsState();
}

class _CateDetailsState extends State<CateDetails> {
  final List<Item> fruits = [
    Item(
      name: "Boston Luttuce",
      price: "12.3",
      unit: "€ / piece",
      favourite: false,
      image:
          "https://images.pexels.com/photos/1656663/pexels-photo-1656663.jpeg?auto=compress&cs=tinysrgb&w=600",
    ),
    Item(
        name: "Purple Cauliflower",
        price: "7.3",
        unit: "€ / kg",
        favourite: false,
        image:
            "https://images.pexels.com/photos/68525/soap-colorful-color-fruit-68525.jpeg?auto=compress&cs=tinysrgb&w=600"),
    Item(
        name: "Savoy Cabbage",
        price: "1.45",
        unit: "€ / kg",
        favourite: false,
        image:
            "https://images.pexels.com/photos/4198024/pexels-photo-4198024.jpeg?auto=compress&cs=tinysrgb&w=600"),
  ];

  List<String> itemSelected = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: TextStyle(
                  color: Color(0xff2D0C57),
                  fontSize: 34,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(0),
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(45),
                  borderSide: const BorderSide(
                    color: Color(0xfffD9D0E3),
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(45),
                  borderSide: const BorderSide(
                    color: Color(0xfffD9D0E3),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Wrap(
              spacing: 10,
              children: [
                FilterChip(
                  label: Text('Cabbage and Lettuce (14)'),
                  backgroundColor: Colors.white,
                  onSelected: (bool value) {
                    setState(() {
                      if (itemSelected.contains('Cabbage and Lettuce (14)')) {
                        itemSelected.remove("Cabbage and Lettuce (14)");
                      } else
                        itemSelected.add("Cabbage and Lettuce (14)");
                    });
                  },
                  selected: itemSelected.contains('Cabbage and Lettuce (14)'),
                ),
                FilterChip(
                  label: Text('Cabbage'),
                  onSelected: (bool value) {
                    setState(() {
                      if (itemSelected.contains('Cabbage')) {
                        itemSelected.remove("Cabbage");
                      } else
                        itemSelected.add("Cabbage");
                    });
                  },
                  selected: itemSelected.contains('Cabbage'),
                ),
                FilterChip(
                  label: Text('Rice and beans'),
                  onSelected: (bool value) {
                    setState(() {
                      if (itemSelected.contains('Rice and beans')) {
                        itemSelected.remove("Rice and beans");
                      } else
                        itemSelected.add("Rice and beans");
                    });
                  },
                  selected: itemSelected.contains('Rice and beans'),
                ),
                FilterChip(
                  label: Text('Cucumber and tomato'),
                  onSelected: (bool value) {
                    setState(() {
                      if (itemSelected.contains('Cucumber and tomato')) {
                        itemSelected.remove("Cucumber and tomato");
                      } else
                        itemSelected.add("Cucumber and tomato");
                    });
                  },
                  selected: itemSelected.contains('Cucumber and tomato'),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: ListView.builder(
                itemCount: fruits.length,
                itemBuilder: (context, index) => Container(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.network(
                          fruits[index].image,
                          height: 127.0,
                          width: 177.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              fruits[index].name,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff2D0C57),
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                text: fruits[index].price,
                                children: [
                                  TextSpan(
                                      text: "${fruits[index].unit}",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xff9586A8),
                                      ))
                                ],
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff2D0C57),
                                ),
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
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => DetailsScreen(
                                                  product: fruits[index],
                                                )));
                                  },
                                  width: 70,
                                  label: Icon(Icons.shopping_cart),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
