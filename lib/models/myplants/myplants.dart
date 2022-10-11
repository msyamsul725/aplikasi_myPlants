import 'package:freezed_annotation/freezed_annotation.dart';

part 'myplants.freezed.dart';
part 'myplants.g.dart';

@freezed
class Myplants with _$Myplants {
  factory Myplants({
    String? id,
    @JsonKey(name: 'plant_name') String? plantName,
    String? photo,
    double? price,
    double? rating,
    String? description,
    int? qty,
  }) = _Myplants;

  factory Myplants.fromJson(Map<String, dynamic> json) =>
      _$MyplantsFromJson(json);
}
