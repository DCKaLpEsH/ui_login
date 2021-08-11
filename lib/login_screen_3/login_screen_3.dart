import 'package:flutter/material.dart';
import 'package:login_ui/login_screen_3/constants.dart';
import 'package:login_ui/login_screen_3/register.dart';
import './input_widget.dart';
import './button_widget.dart';

class LoginScreen3 extends StatelessWidget {
  const LoginScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Constants.kScaffoldBg,
        body: Padding(
          padding: Constants.kScreenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Log In',
                style: Constants.kScreenTitle,
              ),
              Column(
                children: [
                  InputWidget(
                    trailingIcon: Icons.person,
                    hint: 'Username',
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  InputWidget(
                    trailingIcon: Icons.lock,
                    hint: 'Password',
                    suffix: 'Show',
                  ),
                  Row(
                    children: [
                      Checkbox(
                        fillColor: MaterialStateProperty.all(Colors.white),
                        value: false,
                        onChanged: (t) {},
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Remember me',
                          style:
                              TextStyle(color: Colors.blueGrey, fontSize: 20.0),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      TextButton(
                        child: const Text(
                          'Forget Password?',
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  ButtonWidget(title: 'Login'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'or Sign In With',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        alignment: Alignment.center,
                        onPressed: () {},
                        color: Colors.white,
                        iconSize: 35,
                        icon: const Icon(
                          Icons.facebook,
                          // size: 35,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        color: Colors.white,
                        icon: const Icon(
                          Icons.facebook,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        color: Colors.white,
                        icon: const Icon(
                          Icons.facebook,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        color: Colors.white,
                        icon: const Icon(
                          Icons.facebook,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?"),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterScreen()),
                          );
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
