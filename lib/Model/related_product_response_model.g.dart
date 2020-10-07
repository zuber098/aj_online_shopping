// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'related_product_response_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RelatedProductResponseModel>
    _$relatedProductResponseModelSerializer =
    new _$RelatedProductResponseModelSerializer();

class _$RelatedProductResponseModelSerializer
    implements StructuredSerializer<RelatedProductResponseModel> {
  @override
  final Iterable<Type> types = const [
    RelatedProductResponseModel,
    _$RelatedProductResponseModel
  ];
  @override
  final String wireName = 'RelatedProductResponseModel';

  @override
  Iterable<Object> serialize(
      Serializers serializers, RelatedProductResponseModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(object.data,
            specifiedType: const FullType(
                BuiltList, const [const FullType(RelatedProductData)])));
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
  RelatedProductResponseModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RelatedProductResponseModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(RelatedProductData)]))
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

class _$RelatedProductResponseModel extends RelatedProductResponseModel {
  @override
  final BuiltList<RelatedProductData> data;
  @override
  final bool success;
  @override
  final int status;

  factory _$RelatedProductResponseModel(
          [void Function(RelatedProductResponseModelBuilder) updates]) =>
      (new RelatedProductResponseModelBuilder()..update(updates)).build();

  _$RelatedProductResponseModel._({this.data, this.success, this.status})
      : super._();

  @override
  RelatedProductResponseModel rebuild(
          void Function(RelatedProductResponseModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RelatedProductResponseModelBuilder toBuilder() =>
      new RelatedProductResponseModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RelatedProductResponseModel &&
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
    return (newBuiltValueToStringHelper('RelatedProductResponseModel')
          ..add('data', data)
          ..add('success', success)
          ..add('status', status))
        .toString();
  }
}

class RelatedProductResponseModelBuilder
    implements
        Builder<RelatedProductResponseModel,
            RelatedProductResponseModelBuilder> {
  _$RelatedProductResponseModel _$v;

  ListBuilder<RelatedProductData> _data;
  ListBuilder<RelatedProductData> get data =>
      _$this._data ??= new ListBuilder<RelatedProductData>();
  set data(ListBuilder<RelatedProductData> data) => _$this._data = data;

  bool _success;
  bool get success => _$this._success;
  set success(bool success) => _$this._success = success;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  RelatedProductResponseModelBuilder();

  RelatedProductResponseModelBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data?.toBuilder();
      _success = _$v.success;
      _status = _$v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RelatedProductResponseModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RelatedProductResponseModel;
  }

  @override
  void update(void Function(RelatedProductResponseModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RelatedProductResponseModel build() {
    _$RelatedProductResponseModel _$result;
    try {
      _$result = _$v ??
          new _$RelatedProductResponseModel._(
              data: _data?.build(), success: success, status: status);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RelatedProductResponseModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
