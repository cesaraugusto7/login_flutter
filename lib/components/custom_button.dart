import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  late double height, width;
  late String text;
  var onTap;

  CustomButton(
      {Key? key, double? height, double? width, String? text, var onTap})
      : super(key: key) {
    this.height = height!;
    this.width = width!;
    this.text = text!;
    this.onTap = onTap;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
