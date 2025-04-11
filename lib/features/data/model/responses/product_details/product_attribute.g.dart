// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_attribute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductAttributeResponse _$ProductAttributeResponseFromJson(
        Map<String, dynamic> json) =>
    ProductAttributeResponse(
      productId: (json['product_id'] as num?)?.toInt(),
      productAttributeId: (json['product_attribute_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      textPrompt: json['text_prompt'] as String?,
      isRequired: json['is_required'] as bool?,
      defaultValue: json['default_value'] as String?,
      selectedDay: (json['selected_day'] as num?)?.toInt(),
      selectedMonth: (json['selected_month'] as num?)?.toInt(),
      selectedYear: (json['selected_year'] as num?)?.toInt(),
      hasCondition: json['has_condition'] as bool?,
      allowedFileExtensions: (json['allowed_file_extensions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
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

Map<String, dynamic> _$ProductAttributeResponseToJson(
        ProductAttributeResponse instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'product_attribute_id': instance.productAttributeId,
      'name': instance.name,
      'description': instance.description,
      'text_prompt': instance.textPrompt,
      'is_required': instance.isRequired,
      'default_value': instance.defaultValue,
      'selected_day': instance.selectedDay,
      'selected_month': instance.selectedMonth,
      'selected_year': instance.selectedYear,
      'has_condition': instance.hasCondition,
      'allowed_file_extensions': instance.allowedFileExtensions,
      'attribute_control_type': instance.attributeControlType,
      'values': instance.values,
      'id': instance.id,
      'custom_properties': instance.customProperties,
    };
