import 'package:flutter/material.dart';
import 'package:flutter_application_1/login/login_page.dart';


class DefaultLinkText extends StatelessWidget {
  const DefaultLinkText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          "esqueci minha senha",
          style: TextStyle(
            fontSize: 15,
            decoration: TextDecoration.underline,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
