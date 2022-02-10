import 'package:flutter/material.dart';

class CustomIconsLogin extends StatelessWidget {
  late String path;
  late double height;
  CustomIconsLogin({Key? key, double? height, String? path}) : super(key: key) {
    this.height = height!;
    this.path = path!;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.29),
                blurRadius: 2,
                offset: Offset(0.5, 1.5),
                spreadRadius: 3)
          ],
          borderRadius: BorderRadius.circular(40),
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.asset(
              path,
              height: height,
            )));
  }
}
