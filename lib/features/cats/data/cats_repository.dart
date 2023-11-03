import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';

import '../domain/cat.dart';

part 'cats_repository.g.dart';

@riverpod
CatsRepository catsRepository(CatsRepositoryRef ref) {
  return CatsRepository();
}

class CatsRepository {
  final Dio api = Dio(BaseOptions(baseUrl: 'https://dogsandcats.dev/v1/'));

  Future<List<Cat>> getCatsList() async {
    final List<Cat> list = [];
    final result = await api.get('/cats');

    final data = result.data;
    if (data is List) {
      for (final element in data) {
        list.add(Cat.fromJson(element));
      }
    }

    return list;
  }

  Future<Cat> getCat(String id) async {
    final result = await api.get('/cats/$id');
    return Cat.fromJson(result.data);
  }

  Future<void> editCat(String id, Map<String, dynamic> form) async {
    await api.post('/cats/$id', data: form);
  }
}
