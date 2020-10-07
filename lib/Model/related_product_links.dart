import 'dart:convert';

import 'package:ajonlineshope/Model/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'related_product_links.g.dart';

abstract class RelatedProductLinks
    implements Built<RelatedProductLinks, RelatedProductLinksBuilder> {
  RelatedProductLinks._();

  factory RelatedProductLinks([updates(RelatedProductLinksBuilder b)]) =
      _$RelatedProductLinks;

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
        serializers.serializeWith(RelatedProductLinks.serializer, this));
  }

  static RelatedProductLinks fromJson(String jsonString) {
    return serializers.deserializeWith(
        RelatedProductLinks.serializer, json.decode(jsonString));
  }

  static Serializer<RelatedProductLinks> get serializer =>
      _$relatedProductLinksSerializer;
}
