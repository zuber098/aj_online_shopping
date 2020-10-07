import 'dart:convert';

import 'package:ajonlineshope/Model/best_seller_links.dart';
import 'package:ajonlineshope/Model/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'best_seller_data.g.dart';

abstract class BestSellerData
    implements Built<BestSellerData, BestSellerDataBuilder> {
  BestSellerData._();

  factory BestSellerData([updates(BestSellerDataBuilder b)]) = _$BestSellerData;

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
  BestSellerLinks get links;

  String toJson() {
    return json
        .encode(serializers.serializeWith(BestSellerData.serializer, this));
  }

  static BestSellerData fromJson(String jsonString) {
    return serializers.deserializeWith(
        BestSellerData.serializer, json.decode(jsonString));
  }

  static Serializer<BestSellerData> get serializer =>
      _$bestSellerDataSerializer;
}
