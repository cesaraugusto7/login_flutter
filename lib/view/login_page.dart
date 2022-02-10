import 'dart:js';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login/components/custom_button.dart';
import 'package:login/components/custom_label.dart';
import 'package:login/components/custom_textfield.dart';
import 'package:login/components/custon_icons_login.dart';
import 'package:login/controller/view_controller.dart';
import 'package:login/model/view_model.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ViewModel view = ViewController.instance.getSizeHeightLayout(context);
    double heightContainerLogin = view.height * 0.75;
    double heightContainerHeader = view.height * 0.3;
    return Material(
      child: SafeArea(
        child: Stack(
          children: [
            Container(
              width: view.width,
              height: heightContainerHeader,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('lib/assets/images/capa_login.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            Positioned(
              bottom: 0,
              height: heightContainerLogin,
              width: view.width,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(22),
                    topRight: Radius.circular(22),
                  ),
                  color: Colors.grey[200],
                ),
                child: Column(
                  children: [
                    Container(
                      width: view.width,
                      height: heightContainerLogin * 0.18,
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: view.width * 0.06,
                            vertical: view.height * 0.001),
                        child: Text(
                          'Log-in',
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontWeight: FontWeight.w800,
                              decoration: TextDecoration.none,
                              fontFamily: 'Roboto',
                              fontSize: 38),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          view.width * 0.09, 0, view.width * 0.09, 0),
                      child: Form(
                        child: Column(
                          children: [
                            CustomLabel(
                              label: 'Email',
                            ),
                            CustomTextFieldLogin(
                                type: 'text',
                                field: 'Email',
                                paddingBottom: heightContainerHeader * 0.09),
                            CustomLabel(
                              label: 'Password',
                            ),
                            CustomTextFieldLogin(
                                type: 'password',
                                field: 'Password',
                                paddingBottom: 0),
                            Container(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: heightContainerLogin * 0.04),
                                child: Text(
                                  'Forget password?',
                                  style: TextStyle(
                                      color: Colors.grey[900],
                                      fontSize: 16,
                                      fontFamily: 'Roboto',
                                      decoration: TextDecoration.none),
                                ),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                    top: heightContainerLogin * 0.05),
                                child: CustomButton(
                                  height: heightContainerLogin * 0.09,
                                  width: view.width - 0.18,
                                  text: 'login',
                                  onTap: () {},
                                )),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: heightContainerLogin * 0.05),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    "Don't have an account ?",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey[900],
                                        fontFamily: 'Roboto'),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: view.width * 0.02),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, '/register',
                                            arguments: {'create'});
                                      },
                                      child: Text(
                                        "Sing-up",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.grey[900],
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: heightContainerLogin * 0.04),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 1,
                                      color: Colors.grey[900],
                                    ),
                                  ),
                                  const Expanded(
                                    child: Text(
                                      'Or login with',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 1,
                                      color: Colors.grey[900],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: heightContainerLogin * 0.04),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: view.width * 0.02,
                                        right: view.width * 0.02),
                                    child: CustomIconsLogin(
                                      height: heightContainerLogin * 0.07,
                                      path: 'lib/assets/images/gmail.png',
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: view.width * 0.02,
                                        right: view.width * 0.02),
                                    child: CustomIconsLogin(
                                      height: heightContainerLogin * 0.07,
                                      path: 'lib/assets/images/facebook.png',
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
