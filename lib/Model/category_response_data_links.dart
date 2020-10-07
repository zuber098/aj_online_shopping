import 'dart:convert';

import 'package:ajonlineshope/Model/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category_response_data_links.g.dart';

abstract class CategoryResponseDataLinks
    implements
        Built<CategoryResponseDataLinks, CategoryResponseDataLinksBuilder> {
  CategoryResponseDataLinks._();

  factory CategoryResponseDataLinks(
          [updates(CategoryResponseDataLinksBuilder b)]) =
      _$CategoryResponseDataLinks;

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
    return json.encode(
        serializers.serializeWith(CategoryResponseDataLinks.serializer, this));
  }

  static CategoryResponseDataLinks fromJson(String jsonString) {
    return serializers.deserializeWith(
        CategoryResponseDataLinks.serializer, json.decode(jsonString));
  }

  static Serializer<CategoryResponseDataLinks> get serializer =>
      _$categoryResponseDataLinksSerializer;
}
