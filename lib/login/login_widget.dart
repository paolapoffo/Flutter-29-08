import 'package:flutter/material.dart';

import 'default_button.dart';
import 'default_input.dart';
import 'default_link_text.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DefaultInput(
          texto: 'Email',
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            DefaultInput(
              icon: Icon(Icons.remove_red_eye),
              texto: 'Password',
              password: true,
            ),
            DefaultLinkText(),
          ],
        ),
        const SizedBox(height: 20),
        const DefaultButton(buttonText: 'Sign In'),
      ],
    );
  }
}
