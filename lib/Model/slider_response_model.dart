import 'dart:convert';

import 'package:ajonlineshope/Model/slider_data.dart';
import 'package:ajonlineshope/Model/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'slider_response_model.g.dart';

abstract class SliderResponseModel
    implements Built<SliderResponseModel, SliderResponseModelBuilder> {
  SliderResponseModel._();

  factory SliderResponseModel([updates(SliderResponseModelBuilder b)]) =
      _$SliderResponseModel;

  @nullable
  @BuiltValueField(wireName: 'data')
  BuiltList<SliderData> get data;

  @nullable
  @BuiltValueField(wireName: 'success')
  bool get success;

  @nullable
  @BuiltValueField(wireName: 'status')
  int get status;

  String toJson() {
    return json.encode(
        serializers.serializeWith(SliderResponseModel.serializer, this));
  }

  static SliderResponseModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        SliderResponseModel.serializer, json.decode(jsonString));
  }

  static Serializer<SliderResponseModel> get serializer =>
      _$sliderResponseModelSerializer;
}
