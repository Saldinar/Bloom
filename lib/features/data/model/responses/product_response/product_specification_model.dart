// ignore_for_file: sort_constructors_first

import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:amamini_client/features/data/model/responses/product_response/group.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_specification_model.g.dart';

@JsonSerializable()
class ProductSpecificationModelResponse {
  ProductSpecificationModelResponse({this.groups, this.customProperties});

  final List<GroupResponse>? groups;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  factory ProductSpecificationModelResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ProductSpecificationModelResponseFromJson(json);
}
