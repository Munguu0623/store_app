import 'package:json_annotation/json_annotation.dart';
part 'sector.g.dart';

@JsonSerializable()
class SectorModel {
  int id;
  String nameSector;
  int? locationKey;
  SectorModel({required this.id, required this.nameSector, this.locationKey});

  static List<SectorModel> fromList(List<dynamic> data) => data.map((e) => SectorModel.fromJson(e)).toList();
  factory SectorModel.fromJson(Map<String, dynamic> json) =>
      _$SectorModelFromJson(json);
  Map<String, dynamic> toJson() => _$SectorModelToJson(this);
}
