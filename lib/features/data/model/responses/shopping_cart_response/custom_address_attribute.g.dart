// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_address_attribute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomAddressAttributeResponse _$CustomAddressAttributeResponseFromJson(
        Map<String, dynamic> json) =>
    CustomAddressAttributeResponse(
      name: json['name'] as String?,
      isRequired: json['is_required'] as bool?,
      defaultValue: json['default_value'] as String?,
      attributeControlType: json['attribute_control_type'] as String?,
      values: (json['values'] as List<dynamic>?)
          ?.map((e) => ValueResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: (json['id'] as num?)?.toInt(),
      customProperties: json['custom_properties'] == null
          ? null
          : CustomPropertiesResponse.fromJson(
              json['custom_properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomAddressAttributeResponseToJson(
        CustomAddressAttributeResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'is_required': instance.isRequired,
      'default_value': instance.defaultValue,
      'attribute_control_type': instance.attributeControlType,
      'values': instance.values,
      'id': instance.id,
      'custom_properties': instance.customProperties,
    };
