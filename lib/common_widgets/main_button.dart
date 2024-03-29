import 'package:flutter/material.dart';

class CustomElevatedButton extends StatefulWidget {
  const CustomElevatedButton({super.key, required this.onPressed,  this.width, this.label});

  final Function() onPressed;
  final double? width;
  final Widget? label;

  @override
  State<CustomElevatedButton> createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? double.infinity,
      child: ElevatedButton(
        onPressed: widget.onPressed,
        child: widget.label ?? Text('ORDER NOW'),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff0BCE83),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
    );
  }
}
