import 'package:flutter/material.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';

import 'default_title.dart';
import 'login_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 75, 14, 136),
      body: Column(
        children: [
          const SizedBox(height: 35),
          const DefaultTitle(
            title: 'Sign In',
            colortitle: Colors.white,
            colorSubtitle: Colors.white,
          ),
          const SizedBox(height: 30),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SignInButton.mini(
                  buttonType: ButtonType.linkedin,
                  btnColor: Colors.white,
                  onPressed: () {},
                ),
                SignInButton.mini(
                  buttonType: ButtonType.google,
                  btnColor: Colors.white,
                  onPressed: () {},
                ),
                SignInButton.mini(
                  buttonType: ButtonType.github,
                  btnColor: Colors.white,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          const Text(
            "or use your email account",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          TextFormField(
            decoration: const InputDecoration(),
          ),
          const SizedBox(height: 20),
          const LoginWidget(),
          const SizedBox(height: 50),
          const Text(
            """Enter your personal details
  and start journey with us
            """,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          const SizedBox(height: 10),
          const Text(
            "SIGN UP",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ],
      ),
    );
  }
}
