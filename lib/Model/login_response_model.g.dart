// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LoginResponseModel> _$loginResponseModelSerializer =
    new _$LoginResponseModelSerializer();

class _$LoginResponseModelSerializer
    implements StructuredSerializer<LoginResponseModel> {
  @override
  final Iterable<Type> types = const [LoginResponseModel, _$LoginResponseModel];
  @override
  final String wireName = 'LoginResponseModel';

  @override
  Iterable<Object> serialize(Serializers serializers, LoginResponseModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.accessToken != null) {
      result
        ..add('access_token')
        ..add(serializers.serialize(object.accessToken,
            specifiedType: const FullType(String)));
    }
    if (object.tokenType != null) {
      result
        ..add('token_type')
        ..add(serializers.serialize(object.tokenType,
            specifiedType: const FullType(String)));
    }
    if (object.expiresAt != null) {
      result
        ..add('expires_at')
        ..add(serializers.serialize(object.expiresAt,
            specifiedType: const FullType(String)));
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
  LoginResponseModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoginResponseModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'access_token':
          result.accessToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'token_type':
          result.tokenType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'expires_at':
          result.expiresAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$LoginResponseModel extends LoginResponseModel {
  @override
  final String accessToken;
  @override
  final String tokenType;
  @override
  final String expiresAt;
  @override
  final User user;

  factory _$LoginResponseModel(
          [void Function(LoginResponseModelBuilder) updates]) =>
      (new LoginResponseModelBuilder()..update(updates)).build();

  _$LoginResponseModel._(
      {this.accessToken, this.tokenType, this.expiresAt, this.user})
      : super._();

  @override
  LoginResponseModel rebuild(
          void Function(LoginResponseModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginResponseModelBuilder toBuilder() =>
      new LoginResponseModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginResponseModel &&
        accessToken == other.accessToken &&
        tokenType == other.tokenType &&
        expiresAt == other.expiresAt &&
        user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, accessToken.hashCode), tokenType.hashCode),
            expiresAt.hashCode),
        user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginResponseModel')
          ..add('accessToken', accessToken)
          ..add('tokenType', tokenType)
          ..add('expiresAt', expiresAt)
          ..add('user', user))
        .toString();
  }
}

class LoginResponseModelBuilder
    implements Builder<LoginResponseModel, LoginResponseModelBuilder> {
  _$LoginResponseModel _$v;

  String _accessToken;
  String get accessToken => _$this._accessToken;
  set accessToken(String accessToken) => _$this._accessToken = accessToken;

  String _tokenType;
  String get tokenType => _$this._tokenType;
  set tokenType(String tokenType) => _$this._tokenType = tokenType;

  String _expiresAt;
  String get expiresAt => _$this._expiresAt;
  set expiresAt(String expiresAt) => _$this._expiresAt = expiresAt;

  UserBuilder _user;
  UserBuilder get user => _$this._user ??= new UserBuilder();
  set user(UserBuilder user) => _$this._user = user;

  LoginResponseModelBuilder();

  LoginResponseModelBuilder get _$this {
    if (_$v != null) {
      _accessToken = _$v.accessToken;
      _tokenType = _$v.tokenType;
      _expiresAt = _$v.expiresAt;
      _user = _$v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginResponseModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LoginResponseModel;
  }

  @override
  void update(void Function(LoginResponseModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginResponseModel build() {
    _$LoginResponseModel _$result;
    try {
      _$result = _$v ??
          new _$LoginResponseModel._(
              accessToken: accessToken,
              tokenType: tokenType,
              expiresAt: expiresAt,
              user: _user?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LoginResponseModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
