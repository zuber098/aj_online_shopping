import 'dart:convert';

import 'package:ajonlineshope/Model/category_response_data_links.dart';
import 'package:ajonlineshope/Model/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category_response_data.g.dart';

abstract class CategoryResponseData
    implements Built<CategoryResponseData, CategoryResponseDataBuilder> {
  CategoryResponseData._();

  factory CategoryResponseData([updates(CategoryResponseDataBuilder b)]) =
      _$CategoryResponseData;

  @nullable
  @BuiltValueField(wireName: 'name')
  String get name;

  @nullable
  @BuiltValueField(wireName: 'photos')
  BuiltList<String> get photos;

  @nullable
  @BuiltValueField(wireName: 'thumbnail_image')
  String get thumbnailImage;

  @nullable
  @BuiltValueField(wireName: 'featured_image')
  String get featuredImage;

  @nullable
  @BuiltValueField(wireName: 'flash_deal_image')
  String get flashDealImage;

  @nullable
  @BuiltValueField(wireName: 'base_price')
  int get basePrice;

  @nullable
  @BuiltValueField(wireName: 'base_discounted_price')
  int get baseDiscountedPrice;

  @nullable
  @BuiltValueField(wireName: 'todays_deal')
  int get todaysDeal;

  @nullable
  @BuiltValueField(wireName: 'featured')
  int get featured;

  @nullable
  @BuiltValueField(wireName: 'unit')
  String get unit;

  @nullable
  @BuiltValueField(wireName: 'discount')
  int get discount;

  @nullable
  @BuiltValueField(wireName: 'discount_type')
  String get discountType;

  @nullable
  @BuiltValueField(wireName: 'rating')
  int get rating;

  @nullable
  @BuiltValueField(wireName: 'sales')
  int get sales;

  @nullable
  @BuiltValueField(wireName: 'links')
  CategoryResponseDataLinks get links;

  String toJson() {
    return json.encode(
        serializers.serializeWith(CategoryResponseData.serializer, this));
  }

  static CategoryResponseData fromJson(String jsonString) {
    return serializers.deserializeWith(
        CategoryResponseData.serializer, json.decode(jsonString));
  }

  static Serializer<CategoryResponseData> get serializer =>
      _$categoryResponseDataSerializer;
}
