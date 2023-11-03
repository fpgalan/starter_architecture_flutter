// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CatImpl _$$CatImplFromJson(Map<String, dynamic> json) => _$CatImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      age: json['age'] as int,
      breed: json['breed'] as String,
      size: $enumDecode(_$CatSizeEnumMap, json['size']),
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$CatImplToJson(_$CatImpl instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'age': instance.age,
      'breed': instance.breed,
      'size': _$CatSizeEnumMap[instance.size]!,
      'createdAt': instance.createdAt,
    };

const _$CatSizeEnumMap = {
  CatSize.tiny: 'tiny',
  CatSize.small: 'small',
  CatSize.medium: 'medium',
  CatSize.big: 'big',
};
