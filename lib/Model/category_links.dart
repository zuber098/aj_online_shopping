import 'dart:convert';

import 'package:ajonlineshope/Model/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category_links.g.dart';

abstract class CategoryLinks
    implements Built<CategoryLinks, CategoryLinksBuilder> {
  CategoryLinks._();

  factory CategoryLinks([updates(CategoryLinksBuilder b)]) = _$CategoryLinks;

  @nullable
  @BuiltValueField(wireName: 'products')
  String get products;

  @nullable
  @BuiltValueField(wireName: 'sub_categories')
  String get subCategories;

  String toJson() {
    return json
        .encode(serializers.serializeWith(CategoryLinks.serializer, this));
  }

  static CategoryLinks fromJson(String jsonString) {
    return serializers.deserializeWith(
        CategoryLinks.serializer, json.decode(jsonString));
  }

  static Serializer<CategoryLinks> get serializer => _$categoryLinksSerializer;
}
