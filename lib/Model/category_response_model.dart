import 'dart:convert';

import 'package:ajonlineshope/Model/category_response_data.dart';
import 'package:ajonlineshope/Model/category_response_links.dart';
import 'package:ajonlineshope/Model/category_response_meta.dart';
import 'package:ajonlineshope/Model/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category_response_model.g.dart';

abstract class CategoryResponseModel
    implements Built<CategoryResponseModel, CategoryResponseModelBuilder> {
  CategoryResponseModel._();

  factory CategoryResponseModel([updates(CategoryResponseModelBuilder b)]) =
      _$CategoryResponseModel;

  @nullable
  @BuiltValueField(wireName: 'data')
  BuiltList<CategoryResponseData> get data;

  @nullable
  @BuiltValueField(wireName: 'links')
  CategoryResponseLinks get links;

  @nullable
  @BuiltValueField(wireName: 'meta')
  CategoryResponseMeta get meta;

  @nullable
  @BuiltValueField(wireName: 'success')
  bool get success;

  @nullable
  @BuiltValueField(wireName: 'status')
  int get status;

  String toJson() {
    return json.encode(
        serializers.serializeWith(CategoryResponseModel.serializer, this));
  }

  static CategoryResponseModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        CategoryResponseModel.serializer, json.decode(jsonString));
  }

  static Serializer<CategoryResponseModel> get serializer =>
      _$categoryResponseModelSerializer;
}
