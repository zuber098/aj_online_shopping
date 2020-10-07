import 'dart:convert';

import 'package:ajonlineshope/Model/serializers.dart';
import 'package:ajonlineshope/Model/todays_deal_data.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'todays_deal_response_model.g.dart';

abstract class TodaysDealResponseModel
    implements Built<TodaysDealResponseModel, TodaysDealResponseModelBuilder> {
  TodaysDealResponseModel._();

  factory TodaysDealResponseModel([updates(TodaysDealResponseModelBuilder b)]) =
      _$TodaysDealResponseModel;

  @nullable
  @BuiltValueField(wireName: 'data')
  BuiltList<TodaysDealData> get data;

  @nullable
  @BuiltValueField(wireName: 'success')
  bool get success;

  @nullable
  @BuiltValueField(wireName: 'status')
  int get status;

  String toJson() {
    return json.encode(
        serializers.serializeWith(TodaysDealResponseModel.serializer, this));
  }

  static TodaysDealResponseModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        TodaysDealResponseModel.serializer, json.decode(jsonString));
  }

  static Serializer<TodaysDealResponseModel> get serializer =>
      _$todaysDealResponseModelSerializer;
}
