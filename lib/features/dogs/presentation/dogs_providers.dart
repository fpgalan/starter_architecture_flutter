import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:starter_architecture_flutter/features/dogs/data/dogs_repository.dart';
import 'package:starter_architecture_flutter/features/dogs/presentation/dogs_state.dart';

import '../domain/dog.dart';

part 'dogs_providers.g.dart';

@riverpod
class DogsPageController extends _$DogsPageController {
  @override
  DogsState build() {
    return DogsState();
  }

  void setBreedFilter(DogBreed? breed) {
    if (breed == null) return;
    state = state.copyWith(breedFilter: breed);
  }

  // (más funciones/logica de la vista DogsPage)
}

@riverpod
Future<List<Dog>> dogsList(DogsListRef ref) async {
  // Escucha cambios en el filtro de raza
  final breadFilter = ref.watch(dogsPageControllerProvider.select((value) => value.breedFilter));
  // Llama al repositorio con nuevo filtro
  return ref.watch(dogsRepositoryProvider).getDogsList(breadFilter);
}
