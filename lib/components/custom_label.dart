import 'package:flutter/material.dart';

class CustomLabel extends StatelessWidget {
  late String label;

  CustomLabel({
    Key? key,
    String? label,
  }) : super(key: key) {
    this.label = label!;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        label,
        style: TextStyle(
            color: Colors.grey[900],
            fontSize: 16,
            fontFamily: 'Roboto',
            decoration: TextDecoration.none),
      ),
    );
  }
}
