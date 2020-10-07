import 'dart:convert';

import 'package:ajonlineshope/Model/brand_links.dart';
import 'package:ajonlineshope/Model/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'brand_model.g.dart';

abstract class BrandModel implements Built<BrandModel, BrandModelBuilder> {
  BrandModel._();

  factory BrandModel([updates(BrandModelBuilder b)]) = _$BrandModel;

  @nullable
  @BuiltValueField(wireName: 'name')
  String get name;

  @nullable
  @BuiltValueField(wireName: 'logo')
  String get logo;

  @nullable
  @BuiltValueField(wireName: 'links')
  BrandLinks get links;

  String toJson() {
    return json.encode(serializers.serializeWith(BrandModel.serializer, this));
  }

  static BrandModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        BrandModel.serializer, json.decode(jsonString));
  }

  static Serializer<BrandModel> get serializer => _$brandModelSerializer;
}
