import 'package:flutter/material.dart';
import 'package:login/components/custom_button.dart';
import 'package:login/components/custom_label.dart';
import 'package:login/components/custom_textfield.dart';
import 'package:login/controller/view_controller.dart';
import 'package:login/model/view_model.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ViewModel view = ViewController.instance.getSizeHeightLayout(context);
    double heightContainerLogin = view.height * 0.84;
    double heightContainerHeader = view.height * 0.2;
    return Material(
      child: SafeArea(
        child: Stack(
          children: [
            Container(
              width: view.width,
              height: heightContainerHeader,
              decoration: BoxDecoration(
                color: Colors.grey[350],
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
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(22),
                          topRight: Radius.circular(22),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: view.width * 0.06,
                            vertical: view.height * 0.001),
                        child: Text(
                          'Sign-up',
                          style: TextStyle(
                              color: Colors.grey[900],
                              fontWeight: FontWeight.w800,
                              decoration: TextDecoration.none,
                              fontFamily: 'Roboto',
                              fontSize: 39),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          view.width * 0.09, 0, view.width * 0.09, 0),
                      child: Form(
                        child: Column(
                          children: [
                            CustomLabel(label: 'Name'),
                            CustomTextFieldLogin(
                                type: 'text',
                                field: 'Your name',
                                paddingBottom: heightContainerHeader * 0.09),
                            CustomLabel(label: 'Email'),
                            CustomTextFieldLogin(
                                type: 'email',
                                field: 'Your email',
                                paddingBottom: heightContainerHeader * 0.09),
                            CustomLabel(label: 'Contact no'),
                            CustomTextFieldLogin(
                                type: 'phone',
                                field: 'Your contact number',
                                paddingBottom: heightContainerHeader * 0.09),
                            CustomLabel(label: 'New password'),
                            CustomTextFieldLogin(
                                type: 'password',
                                field: 'Your new password',
                                paddingBottom: heightContainerHeader * 0.09),
                            CustomLabel(label: 'Confirme password'),
                            CustomTextFieldLogin(
                                type: 'password',
                                field: 'Confirme your password',
                                paddingBottom: heightContainerHeader * 0.09),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: heightContainerLogin * 0.05),
                              child: CustomButton(
                                height: heightContainerLogin * 0.09,
                                width: view.width - 0.18,
                                text: 'Save',
                                onTap: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: heightContainerHeader * 0.2,
                          left: heightContainerHeader * 0.09,
                          right: heightContainerHeader * 0.09),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            child: Text(
                              "Back to login",
                            ),
                            onTap: () {
                              final args = ModalRoute.of(context)!
                                  .settings
                                  .arguments as Object;
                              print(args);
                              /* if (ModalRoute.of(context)!.settings.arguments) {} */
                              Navigator.pop(context);
                            },
                          ),
                          Icon(Icons.keyboard_arrow_right)
                        ],
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
