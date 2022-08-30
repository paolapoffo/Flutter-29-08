import 'package:dio/dio.dart';
import 'package:flutter/material.dart';


import '../model.dart';
import '../get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _PageState();
}

class _PageState extends State<HomePage> {
  Repository repository = Repository(Dio());
  late Future<List<Model>> news;

  @override
  void initState() {
    news = repository.getAll();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: news,
          builder: (context, AsyncSnapshot<List<Model>> snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  Model newt = snapshot.data![index];
                  return ListTile(
                    title: Text(newt.email),
                    subtitle: Text(newt.senha),
                  );
                },
              );
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
