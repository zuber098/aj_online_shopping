import 'dart:convert';

import 'package:ajonlineshope/Model/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'slider_data.g.dart';

abstract class SliderData implements Built<SliderData, SliderDataBuilder> {
  SliderData._();

  factory SliderData([updates(SliderDataBuilder b)]) = _$SliderData;

  @nullable
  @BuiltValueField(wireName: 'photo')
  String get photo;

  String toJson() {
    return json.encode(serializers.serializeWith(SliderData.serializer, this));
  }

  static SliderData fromJson(String jsonString) {
    return serializers.deserializeWith(
        SliderData.serializer, json.decode(jsonString));
  }

  static Serializer<SliderData> get serializer => _$sliderDataSerializer;
}
