import 'package:flutter/material.dart';
import 'package:login_ui/login_screen_3/button_widget.dart';
import 'package:login_ui/login_screen_3/input_widget.dart';
import 'package:login_ui/login_screen_3/login_screen_3.dart';

import 'constants.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var spacingBetweenInputWidgets = size.height * 0.02;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Constants.kScaffoldBg,
        body: Padding(
          padding: Constants.kScreenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Sign Up',
                style: Constants.kScreenTitle,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      InputWidget(
                        hint: 'First Name',
                        width: (size.width * 0.40),
                      ),
                      InputWidget(
                        hint: 'Last Name',
                        width: (size.width * 0.40),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: spacingBetweenInputWidgets,
                  ),
                  InputWidget(
                    trailingIcon: Icons.email_outlined,
                    hint: 'Enter E-mail ID',
                  ),
                  SizedBox(
                    height: spacingBetweenInputWidgets,
                  ),
                  InputWidget(
                    trailingIcon: Icons.lock,
                    hint: 'Enter Password',
                    suffix: 'Show',
                  ),
                  SizedBox(
                    height: spacingBetweenInputWidgets,
                  ),
                  InputWidget(
                    trailingIcon: Icons.lock,
                    hint: 'Confirm Password',
                    suffix: 'Show',
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        fillColor: MaterialStateProperty.all(Colors.white),
                        checkColor: Colors.pink[700],
                        onChanged: (t) {},
                      ),
                      RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            color: Constants.kBlueGrey,
                          ),
                          children: [
                            const TextSpan(
                              text: 'I Agree with ',
                            ),
                            TextSpan(
                              text: 'privacy ',
                              style: TextStyle(
                                color: Colors.pink[700],
                              ),
                            ),
                            const TextSpan(
                              text: 'and ',
                            ),
                            TextSpan(
                              text: 'Policy',
                              style: TextStyle(
                                color: Colors.pink[700],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  ButtonWidget(title: 'Sign Up'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an Account?'),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen3(),
                        ),
                      );
                    },
                    child: Text(
                      'Log In',
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
