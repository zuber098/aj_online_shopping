// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserResponseModel> _$userResponseModelSerializer =
    new _$UserResponseModelSerializer();

class _$UserResponseModelSerializer
    implements StructuredSerializer<UserResponseModel> {
  @override
  final Iterable<Type> types = const [UserResponseModel, _$UserResponseModel];
  @override
  final String wireName = 'UserResponseModel';

  @override
  Iterable<Object> serialize(Serializers serializers, UserResponseModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(bool)));
    }
    if (object.user != null) {
      result
        ..add('user')
        ..add(serializers.serialize(object.user,
            specifiedType: const FullType(User)));
    }
    return result;
  }

  @override
  UserResponseModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserResponseModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(User)) as User);
          break;
      }
    }

    return result.build();
  }
}

class _$UserResponseModel extends UserResponseModel {
  @override
  final bool status;
  @override
  final User user;

  factory _$UserResponseModel(
          [void Function(UserResponseModelBuilder) updates]) =>
      (new UserResponseModelBuilder()..update(updates)).build();

  _$UserResponseModel._({this.status, this.user}) : super._();

  @override
  UserResponseModel rebuild(void Function(UserResponseModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserResponseModelBuilder toBuilder() =>
      new UserResponseModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserResponseModel &&
        status == other.status &&
        user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, status.hashCode), user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserResponseModel')
          ..add('status', status)
          ..add('user', user))
        .toString();
  }
}

class UserResponseModelBuilder
    implements Builder<UserResponseModel, UserResponseModelBuilder> {
  _$UserResponseModel _$v;

  bool _status;
  bool get status => _$this._status;
  set status(bool status) => _$this._status = status;

  UserBuilder _user;
  UserBuilder get user => _$this._user ??= new UserBuilder();
  set user(UserBuilder user) => _$this._user = user;

  UserResponseModelBuilder();

  UserResponseModelBuilder get _$this {
    if (_$v != null) {
      _status = _$v.status;
      _user = _$v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserResponseModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserResponseModel;
  }

  @override
  void update(void Function(UserResponseModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserResponseModel build() {
    _$UserResponseModel _$result;
    try {
      _$result = _$v ??
          new _$UserResponseModel._(status: status, user: _user?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UserResponseModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
