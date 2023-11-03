import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';
import 'package:starter_architecture_flutter/core/api/api.dart';
import 'package:starter_architecture_flutter/features/dogs/presentation/dogs_state.dart';

import '../domain/dog.dart';

part 'dogs_repository.g.dart';

@riverpod
DogsRepository dogsRepository(DogsRepositoryRef ref) {
  return DogsRepository();
}

class DogsRepository {
  Future<List<Dog>> getDogsList(DogBreed breedFilter) async {
    final List<Dog> list = [];
    final result = await api.post('/dogs', data: {'breedFilter', breedFilter});

    final data = result.data;
    if (data is List) {
      for (final element in data) {
        list.add(Dog.fromJson(element));
      }
    }
    // Fake waiting
    await Future.delayed(Duration(seconds: 2));

    return list;
  }

  Future<Dog> getDog(String id) async {
    final result = await api.get('/dogs/$id');
    return Dog.fromJson(result.data);
  }

  Future<void> editDog(String id, Map<String, dynamic> form) async {
    await api.post('/dogs/$id', data: form);
  }
}

// const fakeResult = {
//   'id': '000111222',
//   'name': 'Toby',
//   'breed': 'Labrador',
//   'age': 4,
// };
//
// const fakeListResult = [fakeResult, fakeResult, fakeResult];
