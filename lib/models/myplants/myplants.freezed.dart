// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'myplants.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Myplants _$MyplantsFromJson(Map<String, dynamic> json) {
  return _Myplants.fromJson(json);
}

/// @nodoc
mixin _$Myplants {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'plant_name')
  String? get plantName => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get qty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyplantsCopyWith<Myplants> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyplantsCopyWith<$Res> {
  factory $MyplantsCopyWith(Myplants value, $Res Function(Myplants) then) =
      _$MyplantsCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      @JsonKey(name: 'plant_name') String? plantName,
      String? photo,
      double? price,
      double? rating,
      String? description,
      int? qty});
}

/// @nodoc
class _$MyplantsCopyWithImpl<$Res> implements $MyplantsCopyWith<$Res> {
  _$MyplantsCopyWithImpl(this._value, this._then);

  final Myplants _value;
  // ignore: unused_field
  final $Res Function(Myplants) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? plantName = freezed,
    Object? photo = freezed,
    Object? price = freezed,
    Object? rating = freezed,
    Object? description = freezed,
    Object? qty = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      plantName: plantName == freezed
          ? _value.plantName
          : plantName // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_MyplantsCopyWith<$Res> implements $MyplantsCopyWith<$Res> {
  factory _$$_MyplantsCopyWith(
          _$_Myplants value, $Res Function(_$_Myplants) then) =
      __$$_MyplantsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      @JsonKey(name: 'plant_name') String? plantName,
      String? photo,
      double? price,
      double? rating,
      String? description,
      int? qty});
}

/// @nodoc
class __$$_MyplantsCopyWithImpl<$Res> extends _$MyplantsCopyWithImpl<$Res>
    implements _$$_MyplantsCopyWith<$Res> {
  __$$_MyplantsCopyWithImpl(
      _$_Myplants _value, $Res Function(_$_Myplants) _then)
      : super(_value, (v) => _then(v as _$_Myplants));

  @override
  _$_Myplants get _value => super._value as _$_Myplants;

  @override
  $Res call({
    Object? id = freezed,
    Object? plantName = freezed,
    Object? photo = freezed,
    Object? price = freezed,
    Object? rating = freezed,
    Object? description = freezed,
    Object? qty = freezed,
  }) {
    return _then(_$_Myplants(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      plantName: plantName == freezed
          ? _value.plantName
          : plantName // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Myplants implements _Myplants {
  _$_Myplants(
      {this.id,
      @JsonKey(name: 'plant_name') this.plantName,
      this.photo,
      this.price,
      this.rating,
      this.description,
      this.qty});

  factory _$_Myplants.fromJson(Map<String, dynamic> json) =>
      _$$_MyplantsFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'plant_name')
  final String? plantName;
  @override
  final String? photo;
  @override
  final double? price;
  @override
  final double? rating;
  @override
  final String? description;
  @override
  final int? qty;

  @override
  String toString() {
    return 'Myplants(id: $id, plantName: $plantName, photo: $photo, price: $price, rating: $rating, description: $description, qty: $qty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Myplants &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.plantName, plantName) &&
            const DeepCollectionEquality().equals(other.photo, photo) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.qty, qty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(plantName),
      const DeepCollectionEquality().hash(photo),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(qty));

  @JsonKey(ignore: true)
  @override
  _$$_MyplantsCopyWith<_$_Myplants> get copyWith =>
      __$$_MyplantsCopyWithImpl<_$_Myplants>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyplantsToJson(
      this,
    );
  }
}

abstract class _Myplants implements Myplants {
  factory _Myplants(
      {final String? id,
      @JsonKey(name: 'plant_name') final String? plantName,
      final String? photo,
      final double? price,
      final double? rating,
      final String? description,
      final int? qty}) = _$_Myplants;

  factory _Myplants.fromJson(Map<String, dynamic> json) = _$_Myplants.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'plant_name')
  String? get plantName;
  @override
  String? get photo;
  @override
  double? get price;
  @override
  double? get rating;
  @override
  String? get description;
  @override
  int? get qty;
  @override
  @JsonKey(ignore: true)
  _$$_MyplantsCopyWith<_$_Myplants> get copyWith =>
      throw _privateConstructorUsedError;
}
