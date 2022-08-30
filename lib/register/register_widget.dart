import 'package:flutter/material.dart';
import 'package:flutter_application_1/register/success/sucess_page.dart';

import '../login/default_input.dart';

class RegisterWidget extends StatelessWidget {
  const RegisterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DefaultInput(
          icon: Icon(Icons.person_outline_outlined),
          texto: 'Name',
          password: true,
        ),
        Column(
          children: const [
            DefaultInput(
              icon: Icon(Icons.email_outlined),
              texto: 'Email',
              password: true,
            ),
            DefaultInput(
              icon: Icon(Icons.lock_outline_rounded),
              texto: 'Password',
              password: true,
            ),
            DefaultInput(
              icon: Icon(Icons.lock_outline_rounded),
              texto: 'Confirm Password',
              password: true,
            ),
          ],
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: 300,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const SucessPage();
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
              'SIGN UP',
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
