
import 'dart:convert';

import 'package:ajonlineshope/Model/all_category_data.dart';
import 'package:ajonlineshope/Model/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'all_category_response_model.g.dart';

abstract class AllCategoryResponseModel
    implements
        Built<AllCategoryResponseModel, AllCategoryResponseModelBuilder> {
  AllCategoryResponseModel._();

  factory AllCategoryResponseModel(
      [updates(AllCategoryResponseModelBuilder b)]) =
  _$AllCategoryResponseModel;

  @nullable @BuiltValueField(wireName: 'data')
  BuiltList<AllCategoryData> get data;
  @nullable @BuiltValueField(wireName: 'success')
  bool get success;
  @nullable @BuiltValueField(wireName: 'status')
  int get status;
  String toJson() {
    return json.encode(
        serializers.serializeWith(AllCategoryResponseModel.serializer, this));
  }

  static AllCategoryResponseModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        AllCategoryResponseModel.serializer, json.decode(jsonString));
  }

  static Serializer<AllCategoryResponseModel> get serializer =>
      _$allCategoryResponseModelSerializer;
}
