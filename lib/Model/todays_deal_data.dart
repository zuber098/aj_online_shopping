import 'dart:convert';

import 'package:ajonlineshope/Model/best_seller_links.dart';
import 'package:ajonlineshope/Model/serializers.dart';
import 'package:ajonlineshope/Model/todays_deal_links.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'todays_deal_data.g.dart';

abstract class TodaysDealData
    implements Built<TodaysDealData, TodaysDealDataBuilder> {
  TodaysDealData._();

  factory TodaysDealData([updates(TodaysDealDataBuilder b)]) = _$TodaysDealData;

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
  TodaysDealLinks get links;

  String toJson() {
    return json
        .encode(serializers.serializeWith(TodaysDealData.serializer, this));
  }

  static TodaysDealData fromJson(String jsonString) {
    return serializers.deserializeWith(
        TodaysDealData.serializer, json.decode(jsonString));
  }

  static Serializer<TodaysDealData> get serializer =>
      _$todaysDealDataSerializer;
}
