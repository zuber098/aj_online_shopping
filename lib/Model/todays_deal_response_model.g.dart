// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todays_deal_response_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TodaysDealResponseModel> _$todaysDealResponseModelSerializer =
    new _$TodaysDealResponseModelSerializer();

class _$TodaysDealResponseModelSerializer
    implements StructuredSerializer<TodaysDealResponseModel> {
  @override
  final Iterable<Type> types = const [
    TodaysDealResponseModel,
    _$TodaysDealResponseModel
  ];
  @override
  final String wireName = 'TodaysDealResponseModel';

  @override
  Iterable<Object> serialize(
      Serializers serializers, TodaysDealResponseModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(object.data,
            specifiedType: const FullType(
                BuiltList, const [const FullType(TodaysDealData)])));
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
  TodaysDealResponseModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TodaysDealResponseModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(TodaysDealData)]))
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

class _$TodaysDealResponseModel extends TodaysDealResponseModel {
  @override
  final BuiltList<TodaysDealData> data;
  @override
  final bool success;
  @override
  final int status;

  factory _$TodaysDealResponseModel(
          [void Function(TodaysDealResponseModelBuilder) updates]) =>
      (new TodaysDealResponseModelBuilder()..update(updates)).build();

  _$TodaysDealResponseModel._({this.data, this.success, this.status})
      : super._();

  @override
  TodaysDealResponseModel rebuild(
          void Function(TodaysDealResponseModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TodaysDealResponseModelBuilder toBuilder() =>
      new TodaysDealResponseModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TodaysDealResponseModel &&
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
    return (newBuiltValueToStringHelper('TodaysDealResponseModel')
          ..add('data', data)
          ..add('success', success)
          ..add('status', status))
        .toString();
  }
}

class TodaysDealResponseModelBuilder
    implements
        Builder<TodaysDealResponseModel, TodaysDealResponseModelBuilder> {
  _$TodaysDealResponseModel _$v;

  ListBuilder<TodaysDealData> _data;
  ListBuilder<TodaysDealData> get data =>
      _$this._data ??= new ListBuilder<TodaysDealData>();
  set data(ListBuilder<TodaysDealData> data) => _$this._data = data;

  bool _success;
  bool get success => _$this._success;
  set success(bool success) => _$this._success = success;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  TodaysDealResponseModelBuilder();

  TodaysDealResponseModelBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data?.toBuilder();
      _success = _$v.success;
      _status = _$v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TodaysDealResponseModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TodaysDealResponseModel;
  }

  @override
  void update(void Function(TodaysDealResponseModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TodaysDealResponseModel build() {
    _$TodaysDealResponseModel _$result;
    try {
      _$result = _$v ??
          new _$TodaysDealResponseModel._(
              data: _data?.build(), success: success, status: status);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TodaysDealResponseModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
