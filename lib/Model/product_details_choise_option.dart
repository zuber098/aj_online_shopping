
import 'dart:convert';

import 'package:ajonlineshope/Model/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_details_choise_option.g.dart';

abstract class ProductDetailsChoiseOption
    implements
        Built<ProductDetailsChoiseOption, ProductDetailsChoiseOptionBuilder> {
  ProductDetailsChoiseOption._();

  factory ProductDetailsChoiseOption(
      [updates(ProductDetailsChoiseOptionBuilder b)]) =
  _$ProductDetailsChoiseOption;

  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'title')
  String get title;
  @BuiltValueField(wireName: 'options')
  BuiltList<String> get options;
  String toJson() {
    return json.encode(
        serializers.serializeWith(ProductDetailsChoiseOption.serializer, this));
  }

  static ProductDetailsChoiseOption fromJson(String jsonString) {
    return serializers.deserializeWith(
        ProductDetailsChoiseOption.serializer, json.decode(jsonString));
  }

  static Serializer<ProductDetailsChoiseOption> get serializer =>
      _$productDetailsChoiseOptionSerializer;
}
