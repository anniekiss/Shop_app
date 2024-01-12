import 'package:flutter/material.dart';

class CateDetails extends StatefulWidget {
  const CateDetails({super.key, required this.title});

  final String title;

  @override
  State<CateDetails> createState() => _CateDetailsState();
}

class _CateDetailsState extends State<CateDetails> {
  final List<Map<String, dynamic>> fruits = [
    {
      "name": "Boston Luttuce",
      "price": "\$12.3",
      "unit": "piece",
      "favourite": false,
      "image":
          "https://images.pexels.com/photos/68525/soap-colorful-color-fruit-68525.jpeg?auto=compress&cs=tinysrgb&w=600"
    },
    {
      "name": "Purple Cauliflower",
      "price": "\$7.3",
      "unit": "kg",
      "favourite": false,
      "image":
          "https://images.pexels.com/photos/68525/soap-colorful-color-fruit-68525.jpeg?auto=compress&cs=tinysrgb&w=600"
    }
  ];

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
              children: [
                Chip(
                  label: Text('Cabbage and Lettuce (14)'),
                  backgroundColor: Colors.white,
                ),
                Chip(
                  label: Text('Cabbage '),
                ),
                Chip(
                  label: Text('Rice and beans'),
                ),
                Chip(
                  label: Text('Cucumber and tomato'),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: ListView.builder(
                itemCount: fruits.length,
                itemBuilder: (context, index) => Row(
                  children: [
                    SizedBox(
                      height: 100,
                      width: 140,
                      child: Image.network(
                        fruits[index]['image'],
                      ),
                    ),
                    Column(
                      children: [
                        Text('Title'),
                        Text("Prive/unit"),
                        OutlinedButton(
                            onPressed: () {}, child: Icon(Icons.favorite))
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
