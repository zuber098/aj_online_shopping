import 'dart:convert';

import 'package:ajonlineshope/Model/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'subcategory_links.g.dart';

abstract class SubcategoryLinks
    implements Built<SubcategoryLinks, SubcategoryLinksBuilder> {
  SubcategoryLinks._();

  factory SubcategoryLinks([updates(SubcategoryLinksBuilder b)]) =
      _$SubcategoryLinks;

  @nullable
  @BuiltValueField(wireName: 'products')
  String get products;

  String toJson() {
    return json
        .encode(serializers.serializeWith(SubcategoryLinks.serializer, this));
  }

  static SubcategoryLinks fromJson(String jsonString) {
    return serializers.deserializeWith(
        SubcategoryLinks.serializer, json.decode(jsonString));
  }

  static Serializer<SubcategoryLinks> get serializer =>
      _$subcategoryLinksSerializer;
}
