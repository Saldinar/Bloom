import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:amamini_client/features/data/model/responses/picture_model/default_picture_model.dart';
import 'package:amamini_client/features/data/model/responses/product_details/allowed_quantity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'item.g.dart';

@JsonSerializable()
class ItemResponse {
  final String? sku;
  @JsonKey(name: 'vendor_name')
  final String? vendorName;
  final DefaultPictureModelResponse? picture;
  @JsonKey(name: 'product_id')
  final int? productId;
  @JsonKey(name: 'product_name')
  final String? productName;
  @JsonKey(name: 'product_se_name')
  final String? productSeName;
  @JsonKey(name: 'unit_price')
  final String? unitPrice;
  @JsonKey(name: 'unit_price_value')
  final int? unitPriceValue;
  @JsonKey(name: 'sub_total')
  final String? subTotal;
  @JsonKey(name: 'sub_total_value')
  final int? subTotalValue;
  final String? discount;
  @JsonKey(name: 'discount_value')
  final int? discountValue;
  @JsonKey(name: 'maximum_discounted_qty')
  final int? maximumDiscountedQty;
  final int? quantity;
  @JsonKey(name: 'allowed_quantities')
  final List<AllowedQuantityResponse>? allowedQuantities;
  @JsonKey(name: 'attribute_info')
  final String? attributeInfo;
  @JsonKey(name: 'recurring_info')
  final String? recurringInfo;
  @JsonKey(name: 'rental_info')
  final String? rentalInfo;
  @JsonKey(name: 'allow_item_editing')
  final bool? allowItemEditing;
  @JsonKey(name: 'disable_removal')
  final bool? disableRemoval;
  final List<String>? warnings;
  final int? id;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const ItemResponse({
    this.sku,
    this.vendorName,
    this.picture,
    this.productId,
    this.productName,
    this.productSeName,
    this.unitPrice,
    this.unitPriceValue,
    this.subTotal,
    this.subTotalValue,
    this.discount,
    this.discountValue,
    this.maximumDiscountedQty,
    this.quantity,
    this.allowedQuantities,
    this.attributeInfo,
    this.recurringInfo,
    this.rentalInfo,
    this.allowItemEditing,
    this.disableRemoval,
    this.warnings,
    this.id,
    this.customProperties,
  });

  factory ItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ItemResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ItemResponseToJson(this);
}
