import 'dart:convert';

import 'package:ajonlineshope/Model/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'best_seller_links.g.dart';

abstract class BestSellerLinks
    implements Built<BestSellerLinks, BestSellerLinksBuilder> {
  BestSellerLinks._();

  factory BestSellerLinks([updates(BestSellerLinksBuilder b)]) =
      _$BestSellerLinks;

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
        .encode(serializers.serializeWith(BestSellerLinks.serializer, this));
  }

  static BestSellerLinks fromJson(String jsonString) {
    return serializers.deserializeWith(
        BestSellerLinks.serializer, json.decode(jsonString));
  }

  static Serializer<BestSellerLinks> get serializer =>
      _$bestSellerLinksSerializer;
}
