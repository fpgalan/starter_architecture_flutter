import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:starter_architecture_flutter/shared/extensions/extensions.dart';

part 'dogs_state.freezed.dart';

@freezed
class DogsState with _$DogsState {
  factory DogsState({
    @Default(DogBreed.borderCollie) DogBreed breedFilter,
  }) = _DogsState;
}

enum DogBreed {
  golderRetriever,
  schnauzer,
  borderCollie,
  pastorAleman,
  bulldog,
  dalmata;

  const DogBreed();

  String label() {
    switch (this) {
      case DogBreed.golderRetriever:
        return 'Golden Retriever'.hardcoded;
      case DogBreed.schnauzer:
        return 'Schnauzer'.hardcoded;
      case DogBreed.borderCollie:
        return 'Border Collie'.hardcoded;
      case DogBreed.pastorAleman:
        return 'Pastor Alemán'.hardcoded;
      case DogBreed.bulldog:
        return 'Bulldog'.hardcoded;
      case DogBreed.dalmata:
        return 'Dálmata'.hardcoded;
    }
  }
}
