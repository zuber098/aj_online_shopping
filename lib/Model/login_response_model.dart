import 'dart:convert';

import 'package:ajonlineshope/Model/serializers.dart';
import 'package:ajonlineshope/Model/user.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login_response_model.g.dart';

abstract class LoginResponseModel
    implements Built<LoginResponseModel, LoginResponseModelBuilder> {
  LoginResponseModel._();

  factory LoginResponseModel([updates(LoginResponseModelBuilder b)]) =
      _$LoginResponseModel;

  @nullable
  @BuiltValueField(wireName: 'access_token')
  String get accessToken;

  @nullable
  @BuiltValueField(wireName: 'token_type')
  String get tokenType;

  @nullable
  @BuiltValueField(wireName: 'expires_at')
  String get expiresAt;

  @nullable
  @BuiltValueField(wireName: 'user')
  User get user;

  String toJson() {
    return json
        .encode(serializers.serializeWith(LoginResponseModel.serializer, this));
  }

  static LoginResponseModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        LoginResponseModel.serializer, json.decode(jsonString));
  }

  static Serializer<LoginResponseModel> get serializer =>
      _$loginResponseModelSerializer;
}
