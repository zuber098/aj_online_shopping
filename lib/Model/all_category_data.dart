import 'dart:convert';

import 'package:ajonlineshope/Model/all_category_links.dart';
import 'package:ajonlineshope/Model/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'all_category_data.g.dart';

abstract class AllCategoryData
    implements Built<AllCategoryData, AllCategoryDataBuilder> {
  AllCategoryData._();

  factory AllCategoryData([updates(AllCategoryDataBuilder b)]) =
      _$AllCategoryData;

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
  AllCategoryLinks get links;

  String toJson() {
    return json
        .encode(serializers.serializeWith(AllCategoryData.serializer, this));
  }

  static AllCategoryData fromJson(String jsonString) {
    return serializers.deserializeWith(
        AllCategoryData.serializer, json.decode(jsonString));
  }

  static Serializer<AllCategoryData> get serializer =>
      _$allCategoryDataSerializer;
}
