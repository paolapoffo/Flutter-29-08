import 'package:flutter/material.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';

import 'default_button.dart';
import 'default_link_text.dart';
import 'default_title.dart';
import 'login_widget.dart';

  import 'package:flutter_application_1/login/default_input.dart';
class LoginWidget extends StatelessWidget {
  const LoginWidget({Key? key}) : super(key: key);

@override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultInput(
          texto: 'Email',
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
        DefaultInput(
          icon: Icon(Icons.remove_red_eye),
          texto: 'Password',
          password: true,
        ),
        DefaultLinkText(),
          ],
        ),
        SizedBox(height: 20),
        const DefaultButton(buttonText: 'Sign In'),
      ],
    );
  }
}
