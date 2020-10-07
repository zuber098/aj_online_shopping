import 'dart:convert';

import 'package:ajonlineshope/Model/category_links.dart';
import 'package:ajonlineshope/Model/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category_model.g.dart';

abstract class CategoryModel
    implements Built<CategoryModel, CategoryModelBuilder> {
  CategoryModel._();

  factory CategoryModel([updates(CategoryModelBuilder b)]) = _$CategoryModel;

  @nullable
  @BuiltValueField(wireName: 'name')
  String get name;

  @nullable
  @BuiltValueField(wireName: 'banner')
  String get banner;

  @nullable
  @BuiltValueField(wireName: 'icon')
  String get icon;

  @nullable
  @BuiltValueField(wireName: 'links')
  CategoryLinks get links;

  String toJson() {
    return json
        .encode(serializers.serializeWith(CategoryModel.serializer, this));
  }

  static CategoryModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        CategoryModel.serializer, json.decode(jsonString));
  }

  static Serializer<CategoryModel> get serializer => _$categoryModelSerializer;
}
