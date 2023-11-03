import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'dog.freezed.dart';
part 'dog.g.dart';

// (Example)
@freezed
class Dog with _$Dog {
  @JsonSerializable(includeIfNull: false)
  factory Dog({
    required String id,
    required String name,
    required int age,
    required String breed,
    required DogSize size,
    required String createdAt,
  }) = _Dog;

  factory Dog.fromJson(Map<String, dynamic> json) => _$DogFromJson(json);
}

enum DogSize { tiny, small, medium, big }
