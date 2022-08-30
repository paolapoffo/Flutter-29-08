import 'package:flutter/material.dart';

import '../../home/home_page.dart';

class SucessPage extends StatelessWidget {
  const SucessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 75, 14, 136),
        body: Center(
          child: SizedBox(
            width: 300,
            height: 600,
            child: Column(
              children: [
                const SizedBox(height: 10),
                const Text(
                  'Your registration was successful !',
                  style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(height: 50),
                Image.network(
                  'https://s3-alpha-sig.figma.com/img/f1c6/12f6/fdede345879b37a4ab223a93c354975d?Expires=1662940800&Signature=hexp3oj7HJvIpCU6-7dFp-E2UWCXPaxNWGrelAoqp2UCnTc7AXbjyMLo5rVI6gUzfI9LodsXgX2jiOhSepey8sVSZZ5t6aEvNJs1p7D55~0t4-19yTjpLX10xmdLgxiewXmopAt60j1yGIITmNX~TzLRR2onTMNiUddLfhNrSuF5v0rgTbFBbTjwHfvHKf-gOQ7fgWBxxzBYEkob21JE5vmk42krdqLj62bBaUeoCmy6mHbDX8of-x4t7pg186Y-OfD9~0jL1a5lfrj1BjNTGGVtWUhefL-lcW9zK9JAFE3Phqrf6AMTT-JwYXpXN633kbQ4BLv8DYJT1ywNf~OnpQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
                  height: 130,
                ),
                const SizedBox(height: 50),
                Text(
                  '''Your registration was succesful 
          and we have sent you 
  a confirmation receipt to your 
                    email at:''',
                  style: TextStyle(fontSize: 18, color: Colors.grey.shade500),
                ),
                const SizedBox(height: 20),
                Text(
                  'paolapoffo1@gmail.com',
                  style: TextStyle(fontSize: 18, color: Colors.grey.shade500),
                ),
                const SizedBox(height: 50),
                SizedBox(
                  width: 300,
                  height: 50,
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
            ),
          ),
        ),
      ),
    );
  }
}
