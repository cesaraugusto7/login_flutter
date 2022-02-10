import 'package:flutter/material.dart';
import 'package:login/view/login_page.dart';
import 'package:login/view/register_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/register': (context) => RegisterPage()
      },
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),
    );
  }
}
