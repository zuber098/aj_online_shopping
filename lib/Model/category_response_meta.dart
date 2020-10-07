import 'dart:convert';

import 'package:ajonlineshope/Model/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category_response_meta.g.dart';

abstract class CategoryResponseMeta
    implements Built<CategoryResponseMeta, CategoryResponseMetaBuilder> {
  CategoryResponseMeta._();

  factory CategoryResponseMeta([updates(CategoryResponseMetaBuilder b)]) =
      _$CategoryResponseMeta;

  @nullable
  @BuiltValueField(wireName: 'current_page')
  int get currentPage;

  @nullable
  @BuiltValueField(wireName: 'from')
  int get from;

  @nullable
  @BuiltValueField(wireName: 'last_page')
  int get lastPage;

  @nullable
  @BuiltValueField(wireName: 'path')
  String get path;

  @nullable
  @BuiltValueField(wireName: 'per_page')
  int get perPage;

  @nullable
  @BuiltValueField(wireName: 'to')
  int get to;

  @nullable
  @BuiltValueField(wireName: 'total')
  int get total;

  String toJson() {
    return json.encode(
        serializers.serializeWith(CategoryResponseMeta.serializer, this));
  }

  static CategoryResponseMeta fromJson(String jsonString) {
    return serializers.deserializeWith(
        CategoryResponseMeta.serializer, json.decode(jsonString));
  }

  static Serializer<CategoryResponseMeta> get serializer => _$categoryResponseMetaSerializer;
}
