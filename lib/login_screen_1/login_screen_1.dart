import 'package:flutter/material.dart';

class LoginScreen1 extends StatelessWidget {
  const LoginScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: const Icon(
              Icons.add_box,
              size: 100,
              color: Colors.white,
            ),
            height: 350,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFF05F00),
                  Color(0xFFF18900),
                ],
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(100.0),
              ),
            ),
          ),
          Container(
            width: 350,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                InputField(
                  icon: Icons.email,
                  hint: 'Email',
                ),
                const SizedBox(
                  height: 8,
                ),
                InputField(
                  icon: Icons.lock,
                  hint: 'Password',
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text('Forgot Your Password?',
                        style: TextStyle(
                          color: Color(0xFF9B9B9B),
                        ))),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            width: 350,
            height: 40,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color(0xFFEE8400),
                Color(0xFFEF5E00),
                // Color(0xFF)
              ]),
              borderRadius: BorderRadius.horizontal(
                left: Radius.circular(20),
                right: Radius.circular(20),
              ),
            ),
            child: OutlinedButton(
              style: ButtonStyle(
                side: MaterialStateProperty.all(BorderSide.none),
              ),
              onPressed: () {},
              child: const Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don't have an account?"),
              TextButton(
                onPressed: () {},
                child: const Text('Register'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class InputField extends StatelessWidget {
  final IconData icon;
  final String hint;

  InputField({required this.icon, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Colors.grey,
          ),
          hintText: hint,
          hintStyle: const TextStyle(
            fontSize: 14,
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(30.0),
              right: Radius.circular(30.0),
            ),
          ),
        ),
      ),
    );
  }
}
