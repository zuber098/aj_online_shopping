import 'dart:convert';

import 'package:ajonlineshope/Model/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category_response_links.g.dart';

abstract class CategoryResponseLinks
    implements Built<CategoryResponseLinks, CategoryResponseLinksBuilder> {
  CategoryResponseLinks._();

  factory CategoryResponseLinks([updates(CategoryResponseLinksBuilder b)]) =
      _$CategoryResponseLinks;

  @nullable
  @BuiltValueField(wireName: 'first')
  String get first;

  @nullable
  @BuiltValueField(wireName: 'last')
  String get last;

  @nullable
  @BuiltValueField(wireName: 'prev')
  String get prev;

  @nullable
  @BuiltValueField(wireName: 'next')
  String get next;

  String toJson() {
    return json.encode(
        serializers.serializeWith(CategoryResponseLinks.serializer, this));
  }

  static CategoryResponseLinks fromJson(String jsonString) {
    return serializers.deserializeWith(
        CategoryResponseLinks.serializer, json.decode(jsonString));
  }

  static Serializer<CategoryResponseLinks> get serializer =>
      _$categoryResponseLinksSerializer;
}
