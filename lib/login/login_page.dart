import 'package:flutter/material.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';

import '../register/register_page.dart';
import 'default_title.dart';
import 'login_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 75, 14, 136),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 35),
              const DefaultTitle(
                title: 'Sign In',
                colortitle: Colors.white,
                colorSubtitle: Colors.white,
              ),
              const SizedBox(height: 20),
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
              const SizedBox(height: 30),
              Text(
                "or use your email account",
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 20,
                ),
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
              Container(
                margin: const EdgeInsets.only(right: 15),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const RegisterPage();
                        },
                      ),
                    );
                  },
                  child: const Text(
                    "SIGN UP",
                    style: TextStyle(
                      fontSize: 25,
                      decoration: TextDecoration.underline,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
