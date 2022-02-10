import 'package:flutter/material.dart';

class CustomTextFieldLogin extends StatefulWidget {
  late bool obfuscate;
  late String field;
  late double paddingBottom;
  late String type;

  CustomTextFieldLogin(
      {Key? key, String? field, double? paddingBottom, String? type})
      : super(key: key) {
    obfuscate = type == 'password' ? true : false;
    this.field = field!;
    this.paddingBottom = paddingBottom!;
    this.type = type!;
  }

  @override
  _CustomTextFieldLogin createState() => _CustomTextFieldLogin();
}

class _CustomTextFieldLogin extends State<CustomTextFieldLogin> {
  @override
  Widget build(BuildContext context) {
    viewPassword() {
      setState(() {
        widget.obfuscate = widget.obfuscate ? false : true;
      });
    }

    return Padding(
      padding: EdgeInsets.only(bottom: widget.paddingBottom),
      child: TextField(
        decoration: InputDecoration(
          hintText: widget.field,
          suffixIcon: widget.type == 'password'
              ? GestureDetector(
                  child: Icon(
                    Icons.visibility,
                    color: Colors.grey[750],
                    size: 16,
                  ),
                  onTap: () {
                    viewPassword();
                  },
                )
              : null,
        ),
        obscureText: widget.obfuscate,
      ),
    );
  }
}
