import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/login/login_page.dart';
import 'package:flutter_application_1/register/register_widget.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';

import '../login/default_title.dart';
import '../model.dart';
import '../get.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  Repository repository = Repository(Dio());
  late Future<List<Model>> news;

  @override
  void initState() {
    news = repository.getAll();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 75, 14, 136),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 10),
              const DefaultTitle(
                title: 'Create Account',
                colortitle: Colors.white,
                colorSubtitle: Colors.white,
              ),
              const SizedBox(height: 15),
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
              const SizedBox(height: 15),
              Text(
                "or use your email for registration",
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 10),
              const RegisterWidget(),
              const SizedBox(height: 30),
              const Text(
                """To keep connected with us please 
          login with your personal info
                  """,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Container(
                margin: const EdgeInsets.only(right: 15),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const LoginPage();
                        },
                      ),
                    );
                  },
                  child: const Text(
                    "SIGN IN",
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
