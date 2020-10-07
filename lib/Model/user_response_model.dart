import 'dart:convert';

import 'package:ajonlineshope/Model/serializers.dart';
import 'package:ajonlineshope/Model/user.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_response_model.g.dart';

abstract class UserResponseModel
    implements Built<UserResponseModel, UserResponseModelBuilder> {
  UserResponseModel._();

  factory UserResponseModel([updates(UserResponseModelBuilder b)]) =
      _$UserResponseModel;

  @nullable
  @BuiltValueField(wireName: 'status')
  bool get status;

  @nullable
  @BuiltValueField(wireName: 'user')
  User get user;

  String toJson() {
    return json
        .encode(serializers.serializeWith(UserResponseModel.serializer, this));
  }

  static UserResponseModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        UserResponseModel.serializer, json.decode(jsonString));
  }

  static Serializer<UserResponseModel> get serializer =>
      _$userResponseModelSerializer;
}
