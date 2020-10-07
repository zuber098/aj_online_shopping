import 'dart:convert';

import 'package:ajonlineshope/Model/related_product_data.dart';
import 'package:ajonlineshope/Model/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'related_product_response_model.g.dart';

abstract class RelatedProductResponseModel
    implements
        Built<RelatedProductResponseModel, RelatedProductResponseModelBuilder> {
  RelatedProductResponseModel._();

  factory RelatedProductResponseModel(
          [updates(RelatedProductResponseModelBuilder b)]) =
      _$RelatedProductResponseModel;

  @nullable
  @BuiltValueField(wireName: 'data')
  BuiltList<RelatedProductData> get data;

  @nullable
  @BuiltValueField(wireName: 'success')
  bool get success;

  @nullable
  @BuiltValueField(wireName: 'status')
  int get status;

  String toJson() {
    return json.encode(serializers.serializeWith(
        RelatedProductResponseModel.serializer, this));
  }

  static RelatedProductResponseModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        RelatedProductResponseModel.serializer, json.decode(jsonString));
  }

  static Serializer<RelatedProductResponseModel> get serializer =>
      _$relatedProductResponseModelSerializer;
}
