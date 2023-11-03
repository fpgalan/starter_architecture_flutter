// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dogs_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DogsState {
  DogBreed get breedFilter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DogsStateCopyWith<DogsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DogsStateCopyWith<$Res> {
  factory $DogsStateCopyWith(DogsState value, $Res Function(DogsState) then) =
      _$DogsStateCopyWithImpl<$Res, DogsState>;
  @useResult
  $Res call({DogBreed breedFilter});
}

/// @nodoc
class _$DogsStateCopyWithImpl<$Res, $Val extends DogsState>
    implements $DogsStateCopyWith<$Res> {
  _$DogsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breedFilter = null,
  }) {
    return _then(_value.copyWith(
      breedFilter: null == breedFilter
          ? _value.breedFilter
          : breedFilter // ignore: cast_nullable_to_non_nullable
              as DogBreed,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DogsStateImplCopyWith<$Res>
    implements $DogsStateCopyWith<$Res> {
  factory _$$DogsStateImplCopyWith(
          _$DogsStateImpl value, $Res Function(_$DogsStateImpl) then) =
      __$$DogsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DogBreed breedFilter});
}

/// @nodoc
class __$$DogsStateImplCopyWithImpl<$Res>
    extends _$DogsStateCopyWithImpl<$Res, _$DogsStateImpl>
    implements _$$DogsStateImplCopyWith<$Res> {
  __$$DogsStateImplCopyWithImpl(
      _$DogsStateImpl _value, $Res Function(_$DogsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? breedFilter = null,
  }) {
    return _then(_$DogsStateImpl(
      breedFilter: null == breedFilter
          ? _value.breedFilter
          : breedFilter // ignore: cast_nullable_to_non_nullable
              as DogBreed,
    ));
  }
}

/// @nodoc

class _$DogsStateImpl with DiagnosticableTreeMixin implements _DogsState {
  _$DogsStateImpl({this.breedFilter = DogBreed.borderCollie});

  @override
  @JsonKey()
  final DogBreed breedFilter;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DogsState(breedFilter: $breedFilter)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DogsState'))
      ..add(DiagnosticsProperty('breedFilter', breedFilter));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DogsStateImpl &&
            (identical(other.breedFilter, breedFilter) ||
                other.breedFilter == breedFilter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, breedFilter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DogsStateImplCopyWith<_$DogsStateImpl> get copyWith =>
      __$$DogsStateImplCopyWithImpl<_$DogsStateImpl>(this, _$identity);
}

abstract class _DogsState implements DogsState {
  factory _DogsState({final DogBreed breedFilter}) = _$DogsStateImpl;

  @override
  DogBreed get breedFilter;
  @override
  @JsonKey(ignore: true)
  _$$DogsStateImplCopyWith<_$DogsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
