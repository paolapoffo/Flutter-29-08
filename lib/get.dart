import 'package:dio/dio.dart';

import 'model.dart';

class Repository {
  final Dio dio;
  Repository(this.dio);

  Future<List<Model>> getAll() async {
    List<Model> news = [];
    
    final response = await dio.get('http://localhost:49153/api/Usuario');
    news = List.from(response.data.map((newt) => Model.fromMap(newt)));

    return news;
  }
}
