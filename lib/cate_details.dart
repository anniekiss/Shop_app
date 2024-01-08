import 'package:flutter/material.dart';

class CateDetails extends StatefulWidget {
  const CateDetails({super.key, required this.title});

  final String title;

  @override
  State<CateDetails> createState() => _CateDetailsState();
}

class _CateDetailsState extends State<CateDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(
            widget.title,
            style: TextStyle(
                color: Color(0xff2D0C57),
                fontSize: 34,
                fontWeight: FontWeight.bold),
          ),

         
        ],
      ),
    );
  }
}
