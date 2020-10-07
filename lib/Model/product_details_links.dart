
import 'dart:convert';

import 'package:ajonlineshope/Model/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_details_links.g.dart';

abstract class ProductDetailsLinks
    implements Built<ProductDetailsLinks, ProductDetailsLinksBuilder> {
  ProductDetailsLinks._();

  factory ProductDetailsLinks([updates(ProductDetailsLinksBuilder b)]) =
  _$ProductDetailsLinks;

  @nullable @BuiltValueField(wireName: 'reviews')
  String get reviews;
  @nullable@BuiltValueField(wireName: 'related')
  String get related;
  String toJson() {
    return json.encode(
        serializers.serializeWith(ProductDetailsLinks.serializer, this));
  }

  static ProductDetailsLinks fromJson(String jsonString) {
    return serializers.deserializeWith(
        ProductDetailsLinks.serializer, json.decode(jsonString));
  }

  static Serializer<ProductDetailsLinks> get serializer =>
      _$productDetailsLinksSerializer;
}
