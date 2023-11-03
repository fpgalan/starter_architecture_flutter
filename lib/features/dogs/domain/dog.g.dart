// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DogImpl _$$DogImplFromJson(Map<String, dynamic> json) => _$DogImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      age: json['age'] as int,
      breed: json['breed'] as String,
      size: $enumDecode(_$DogSizeEnumMap, json['size']),
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$$DogImplToJson(_$DogImpl instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'age': instance.age,
      'breed': instance.breed,
      'size': _$DogSizeEnumMap[instance.size]!,
      'createdAt': instance.createdAt,
    };

const _$DogSizeEnumMap = {
  DogSize.tiny: 'tiny',
  DogSize.small: 'small',
  DogSize.medium: 'medium',
  DogSize.big: 'big',
};
