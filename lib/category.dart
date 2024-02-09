import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shop_app/cate_details.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  List<Map<String, dynamic>> categoriesListing = [];
  final List<Map<String, dynamic>> categories = [
    {
      "image":
          "https://images.pexels.com/photos/1656663/pexels-photo-1656663.jpeg?auto=compress&cs=tinysrgb&w=600",
      "title": "Vegetables",
      "count": 43
    },
    {
      "image":
          "https://images.pexels.com/photos/68525/soap-colorful-color-fruit-68525.jpeg?auto=compress&cs=tinysrgb&w=600",
      "title": "Fruits",
      "count": 50
    },
    {
      "image":
          "https://images.pexels.com/photos/1775043/pexels-photo-1775043.jpeg?auto=compress&cs=tinysrgb&w=600",
      "title": "Breads",
      "count": 23
    },
    {
      "image":
          "https://images.pexels.com/photos/33239/halloween-candy-chocolates-nuts-sweet.jpg?auto=compress&cs=tinysrgb&w=600",
      "title": "Sweets",
      "count": 67
    },
    {
      "image":
          "https://images.pexels.com/photos/33239/halloween-candy-chocolates-nuts-sweet.jpg?auto=compress&cs=tinysrgb&w=600",
      "title": "Sweets",
      "count": 67
    },
    {
      "image":
          "https://images.pexels.com/photos/33239/halloween-candy-chocolates-nuts-sweet.jpg?auto=compress&cs=tinysrgb&w=600",
      "title": "Sweets",
      "count": 67
    },
    {
      "image":
          "https://images.pexels.com/photos/33239/halloween-candy-chocolates-nuts-sweet.jpg?auto=compress&cs=tinysrgb&w=600",
      "title": "Sweets",
      "count": 67
    },
    {
      "image":
          "https://images.pexels.com/photos/33239/halloween-candy-chocolates-nuts-sweet.jpg?auto=compress&cs=tinysrgb&w=600",
      "title": "Sweets",
      "count": 67
    },
    {
      "image":
          "https://images.pexels.com/photos/33239/halloween-candy-chocolates-nuts-sweet.jpg?auto=compress&cs=tinysrgb&w=600",
      "title": "Sweets",
      "count": 67
    },
  ];

  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    categoriesListing = categories;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox(
        // height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Categories',
                style: TextStyle(
                    color: Color(0xff2D0C57),
                    fontSize: 34,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: searchController,
                onChanged: (annie) {
                  var newValue = categories
                      .where((element) => element["title"]
                          .toString()
                          .toLowerCase()
                          .contains(annie.toLowerCase()))
                      .toList();
                  print(newValue);
                  setState(() {
                    if (newValue.isEmpty) {
                      categoriesListing = categories;
                    } else {
                      inspect(newValue);
                      categoriesListing = newValue;
                    }
                  });
                },
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: Expanded(
                  child: GridView.builder(
                    itemCount: categoriesListing.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 4.0,
                        mainAxisSpacing: 4.0),
                    itemBuilder: (BuildContext context, int index) =>
                        GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CateDetails(
                            title: categoriesListing[index]['title'],
                          ),
                        ),
                      ),
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              categories[index]['image'],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 1),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(categories[index]['title']),
                                  Text(categories[index]['count'].toString())
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
