// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'best_seller_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BestSellerResponse> _$bestSellerResponseSerializer =
    new _$BestSellerResponseSerializer();

class _$BestSellerResponseSerializer
    implements StructuredSerializer<BestSellerResponse> {
  @override
  final Iterable<Type> types = const [BestSellerResponse, _$BestSellerResponse];
  @override
  final String wireName = 'BestSellerResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, BestSellerResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(object.data,
            specifiedType: const FullType(
                BuiltList, const [const FullType(BestSellerData)])));
    }
    if (object.success != null) {
      result
        ..add('success')
        ..add(serializers.serialize(object.success,
            specifiedType: const FullType(bool)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  BestSellerResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BestSellerResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BestSellerData)]))
              as BuiltList<Object>);
          break;
        case 'success':
          result.success = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$BestSellerResponse extends BestSellerResponse {
  @override
  final BuiltList<BestSellerData> data;
  @override
  final bool success;
  @override
  final int status;

  factory _$BestSellerResponse(
          [void Function(BestSellerResponseBuilder) updates]) =>
      (new BestSellerResponseBuilder()..update(updates)).build();

  _$BestSellerResponse._({this.data, this.success, this.status}) : super._();

  @override
  BestSellerResponse rebuild(
          void Function(BestSellerResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BestSellerResponseBuilder toBuilder() =>
      new BestSellerResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BestSellerResponse &&
        data == other.data &&
        success == other.success &&
        status == other.status;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, data.hashCode), success.hashCode), status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BestSellerResponse')
          ..add('data', data)
          ..add('success', success)
          ..add('status', status))
        .toString();
  }
}

class BestSellerResponseBuilder
    implements Builder<BestSellerResponse, BestSellerResponseBuilder> {
  _$BestSellerResponse _$v;

  ListBuilder<BestSellerData> _data;
  ListBuilder<BestSellerData> get data =>
      _$this._data ??= new ListBuilder<BestSellerData>();
  set data(ListBuilder<BestSellerData> data) => _$this._data = data;

  bool _success;
  bool get success => _$this._success;
  set success(bool success) => _$this._success = success;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  BestSellerResponseBuilder();

  BestSellerResponseBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data?.toBuilder();
      _success = _$v.success;
      _status = _$v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BestSellerResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BestSellerResponse;
  }

  @override
  void update(void Function(BestSellerResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BestSellerResponse build() {
    _$BestSellerResponse _$result;
    try {
      _$result = _$v ??
          new _$BestSellerResponse._(
              data: _data?.build(), success: success, status: status);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BestSellerResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
