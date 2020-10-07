import 'dart:convert';

import 'package:ajonlineshope/Model/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'all_category_links.g.dart';

abstract class AllCategoryLinks
    implements Built<AllCategoryLinks, AllCategoryLinksBuilder> {
  AllCategoryLinks._();

  factory AllCategoryLinks([updates(AllCategoryLinksBuilder b)]) =
      _$AllCategoryLinks;

  @nullable
  @BuiltValueField(wireName: 'products')
  String get products;

  @nullable
  @BuiltValueField(wireName: 'sub_categories')
  String get subCategories;

  String toJson() {
    return json
        .encode(serializers.serializeWith(AllCategoryLinks.serializer, this));
  }

  static AllCategoryLinks fromJson(String jsonString) {
    return serializers.deserializeWith(
        AllCategoryLinks.serializer, json.decode(jsonString));
  }

  static Serializer<AllCategoryLinks> get serializer =>
      _$allCategoryLinksSerializer;
}
