import 'dart:convert';

import 'package:ajonlineshope/Model/product_details_data.dart';
import 'package:ajonlineshope/Model/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_details_response_model.g.dart';

abstract class ProductDetailsResponseModel
    implements
        Built<ProductDetailsResponseModel, ProductDetailsResponseModelBuilder> {
  ProductDetailsResponseModel._();

  factory ProductDetailsResponseModel(
          [updates(ProductDetailsResponseModelBuilder b)]) =
      _$ProductDetailsResponseModel;

  @nullable
  @BuiltValueField(wireName: 'data')
  BuiltList<ProductDetailsData> get data;

  @nullable
  @BuiltValueField(wireName: 'success')
  bool get success;

  @nullable
  @BuiltValueField(wireName: 'status')
  int get status;

  String toJson() {
    return json.encode(serializers.serializeWith(
        ProductDetailsResponseModel.serializer, this));
  }

  static ProductDetailsResponseModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        ProductDetailsResponseModel.serializer, json.decode(jsonString));
  }

  static Serializer<ProductDetailsResponseModel> get serializer =>
      _$productDetailsResponseModelSerializer;
}
