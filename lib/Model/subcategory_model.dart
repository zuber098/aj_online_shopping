import 'dart:convert';

import 'package:ajonlineshope/Model/serializers.dart';
import 'package:ajonlineshope/Model/subcategory_links.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'subcategory_model.g.dart';

abstract class SubcategoryModel
    implements Built<SubcategoryModel, SubcategoryModelBuilder> {
  SubcategoryModel._();

  factory SubcategoryModel([updates(SubcategoryModelBuilder b)]) =
      _$SubcategoryModel;

  @nullable
  @BuiltValueField(wireName: 'name')
  String get name;

  @nullable
  @BuiltValueField(wireName: 'links')
  SubcategoryLinks get links;

  String toJson() {
    return json
        .encode(serializers.serializeWith(SubcategoryModel.serializer, this));
  }

  static SubcategoryModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        SubcategoryModel.serializer, json.decode(jsonString));
  }

  static Serializer<SubcategoryModel> get serializer =>
      _$subcategoryModelSerializer;
}
