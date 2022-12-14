import 'package:flutter/material.dart';

import '../home/home_page.dart';
import 'default_input.dart';
import 'default_link_text.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DefaultInput(
          icon: Icon(Icons.email_outlined),
          texto: 'Email',
          password: true,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            DefaultInput(
              icon: Icon(Icons.lock_outline_rounded),
              texto: 'Password',
              password: true,
            ),
            DefaultLinkText(),
          ],
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: 300,
          height: 55,
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const HomePage();
                  },
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            child: const Text(
              'SIGN IN',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
