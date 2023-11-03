import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:starter_architecture_flutter/core/constants/sizes.dart';
import 'package:starter_architecture_flutter/features/dogs/presentation/dogs_providers.dart';
import 'package:starter_architecture_flutter/features/dogs/presentation/dogs_state.dart';
import 'package:starter_architecture_flutter/shared/extensions/extensions.dart';

import '../../../shared/widgets/widgets.dart';
import '../domain/dog.dart';

class DogsPage extends StatelessWidget {
  const DogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MSliverPage(
      appBar: MSliverAppBar(title: 'Perros'.hardcoded),
      slivers: const [
        SliverToBoxAdapter(
          child: Padding(padding: EdgeInsets.all(Sizes.p16), child: _DogsFilterBar()),
        ),
        _DogsListView(),
      ],
    );
  }
}

class _DogsFilterBar extends ConsumerWidget {
  const _DogsFilterBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Lista de opciones (Razas de perro)
    final breedItems =
        DogBreed.values.map((e) => MSelectorItem(value: e, label: e.label())).toList();

    final selectedBreed =
        ref.watch(dogsPageControllerProvider.select((value) => value.breedFilter));
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MSelector<DogBreed>(
          label: 'Filtro de raza'.hardcoded,
          items: breedItems,
          initialSelection: DogBreed.borderCollie,
          onSelected: ref.read(dogsPageControllerProvider.notifier).setBreedFilter,
        ),
        gapH32,
        // Ejemplo de reaccion del cambio de estado del filtro
        Center(child: Chip(label: Text('Filtro seleccionado: ${selectedBreed.label()}')))
      ],
    );
  }
}

class _DogsListView extends ConsumerWidget {
  const _DogsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Escucha lista de perros (AsyncValue())
    final state = ref.watch(dogsListProvider);

    return state.when(
      // Si hay data, mostrar lista
      data: (List<Dog> dogs) {
        return SliverList.separated(
          itemCount: dogs.length,
          itemBuilder: (context, i) => _DogItem(dogs[i]),
          separatorBuilder: (_, __) => const Divider(),
        );
      },
      // Si está cargando, mostrar simbolo de carga
      loading: () => const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator())),
      // En caso de error mostrar widget de error
      error: (error, _) => _DogListErrorView(error: error),
    );
  }
}

class _DogItem extends StatelessWidget {
  const _DogItem(this.dog, {super.key});
  final Dog dog;
  @override
  Widget build(BuildContext context) {
    // TODO
    return const Placeholder();
  }
}

class _DogListErrorView extends StatelessWidget {
  const _DogListErrorView({super.key, required this.error});
  final Object error;
  @override
  Widget build(BuildContext context) {
    // TODO
    return SliverToBoxAdapter(
        child: Padding(
      padding: const EdgeInsets.all(Sizes.p16),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(Sizes.p16),
            child: Center(
              child: Text(
                'No se encuentran perros (La api es inventada)'.hardcoded,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
