import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'cat.freezed.dart';
part 'cat.g.dart';

// (Example)
@freezed
class Cat with _$Cat {
  @JsonSerializable(includeIfNull: false)
  factory Cat({
    required String id,
    required String name,
    required int age,
    required String breed,
    required CatSize size,
    required String createdAt,
  }) = _Cat;

  factory Cat.fromJson(Map<String, dynamic> json) => _$CatFromJson(json);
}

enum CatSize { tiny, small, medium, big }
