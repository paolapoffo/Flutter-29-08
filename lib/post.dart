import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  var baseUrl = 'localhost/api/usuario';

  Future postLogin() async {

    Map<String, dynamic> body = {
      "email": "deveda4217@logodez.com",
      "password": "Teste@123"
    };                                                                                                                                                                                                                                                                                                           

    var response = await Dio().post(
      baseUrl,
      data: body,
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('POST'),
      ),
      body: const Center(),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          postLogin();
        },
        child: const Icon(Icons.search),
      ),
    );
  }
}
