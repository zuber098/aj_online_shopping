import 'dart:convert';

import 'package:ajonlineshope/Model/best_seller_data.dart';
import 'package:ajonlineshope/Model/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'best_seller_response.g.dart';

abstract class BestSellerResponse
    implements Built<BestSellerResponse, BestSellerResponseBuilder> {
  BestSellerResponse._();

  factory BestSellerResponse([updates(BestSellerResponseBuilder b)]) =
      _$BestSellerResponse;

  @nullable
  @BuiltValueField(wireName: 'data')
  BuiltList<BestSellerData> get data;

  @nullable
  @BuiltValueField(wireName: 'success')
  bool get success;

  @nullable
  @BuiltValueField(wireName: 'status')
  int get status;

  String toJson() {
    return json
        .encode(serializers.serializeWith(BestSellerResponse.serializer, this));
  }

  static BestSellerResponse fromJson(String jsonString) {
    return serializers.deserializeWith(
        BestSellerResponse.serializer, json.decode(jsonString));
  }

  static Serializer<BestSellerResponse> get serializer =>
      _$bestSellerResponseSerializer;
}
