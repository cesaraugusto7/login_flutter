import 'package:flutter/material.dart';
import 'package:login/model/view_model.dart';

class ViewController {
  static ViewController instance = ViewController();
  ViewModel getSizeHeightLayout(BuildContext context) {
    return ViewModel(
        MediaQuery.of(context).size.height -
            MediaQuery.of(context).padding.top -
            MediaQuery.of(context).padding.bottom,
        MediaQuery.of(context).size.width);
  }
}
