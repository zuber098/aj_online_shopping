import 'dart:convert';

import 'package:ajonlineshope/Model/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'todays_deal_links.g.dart';

abstract class TodaysDealLinks
    implements Built<TodaysDealLinks, TodaysDealLinksBuilder> {
  TodaysDealLinks._();

  factory TodaysDealLinks([updates(TodaysDealLinksBuilder b)]) =
      _$TodaysDealLinks;

  @nullable
  @BuiltValueField(wireName: 'details')
  String get details;

  @nullable
  @BuiltValueField(wireName: 'reviews')
  String get reviews;

  @nullable
  @BuiltValueField(wireName: 'related')
  String get related;

  @nullable
  @BuiltValueField(wireName: 'top_from_seller')
  String get topFromSeller;

  String toJson() {
    return json
        .encode(serializers.serializeWith(TodaysDealLinks.serializer, this));
  }

  static TodaysDealLinks fromJson(String jsonString) {
    return serializers.deserializeWith(
        TodaysDealLinks.serializer, json.decode(jsonString));
  }

  static Serializer<TodaysDealLinks> get serializer =>
      _$todaysDealLinksSerializer;
}
