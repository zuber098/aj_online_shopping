import 'dart:convert';

import 'package:ajonlineshope/Model/serializers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user.g.dart';

abstract class User implements Built<User, UserBuilder> {
  User._();

  factory User([updates(UserBuilder b)]) = _$User;

  @nullable
  @BuiltValueField(wireName: 'id')
  int get id;

  @nullable
  @BuiltValueField(wireName: 'type')
  String get type;

  @nullable
  @BuiltValueField(wireName: 'name')
  String get name;

  @nullable
  @BuiltValueField(wireName: 'email')
  String get email;

  @nullable
  @BuiltValueField(wireName: 'avatar')
  String get avatar;

  @nullable
  @BuiltValueField(wireName: 'avatar_original')
  String get avatarOriginal;

  @nullable
  @BuiltValueField(wireName: 'address')
  String get address;

  @nullable
  @BuiltValueField(wireName: 'country')
  String get country;

  @nullable
  @BuiltValueField(wireName: 'city')
  String get city;

  @nullable
  @BuiltValueField(wireName: 'postal_code')
  int get postalCode;

  @nullable
  @BuiltValueField(wireName: 'phone')
  int get phone;

  String toJson() {
    return json.encode(serializers.serializeWith(User.serializer, this));
  }

  static User fromJson(String jsonString) {
    return serializers.deserializeWith(
        User.serializer, json.decode(jsonString));
  }

  static Serializer<User> get serializer => _$userSerializer;
}
