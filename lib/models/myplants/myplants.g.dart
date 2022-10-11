// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'myplants.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Myplants _$$_MyplantsFromJson(Map<String, dynamic> json) => _$_Myplants(
      id: json['id'] as String?,
      plantName: json['plant_name'] as String?,
      photo: json['photo'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      rating: (json['rating'] as num?)?.toDouble(),
      description: json['description'] as String?,
      qty: json['qty'] as int?,
    );

Map<String, dynamic> _$$_MyplantsToJson(_$_Myplants instance) =>
    <String, dynamic>{
      'id': instance.id,
      'plant_name': instance.plantName,
      'photo': instance.photo,
      'price': instance.price,
      'rating': instance.rating,
      'description': instance.description,
      'qty': instance.qty,
    };
