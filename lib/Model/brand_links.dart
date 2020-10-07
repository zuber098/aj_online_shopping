import 'dart:convert';

import 'package:ajonlineshope/Model/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'brand_links.g.dart';

abstract class BrandLinks implements Built<BrandLinks, BrandLinksBuilder> {
  BrandLinks._();

  factory BrandLinks([updates(BrandLinksBuilder b)]) = _$BrandLinks;

  @nullable
  @BuiltValueField(wireName: 'products')
  String get products;

  String toJson() {
    return json.encode(serializers.serializeWith(BrandLinks.serializer, this));
  }

  static BrandLinks fromJson(String jsonString) {
    return serializers.deserializeWith(
        BrandLinks.serializer, json.decode(jsonString));
  }

  static Serializer<BrandLinks> get serializer => _$brandLinksSerializer;
}
