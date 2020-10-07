// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_response_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoryResponseModel> _$categoryResponseModelSerializer =
    new _$CategoryResponseModelSerializer();

class _$CategoryResponseModelSerializer
    implements StructuredSerializer<CategoryResponseModel> {
  @override
  final Iterable<Type> types = const [
    CategoryResponseModel,
    _$CategoryResponseModel
  ];
  @override
  final String wireName = 'CategoryResponseModel';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CategoryResponseModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.data != null) {
      result
        ..add('data')
        ..add(serializers.serialize(object.data,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CategoryResponseData)])));
    }
    if (object.links != null) {
      result
        ..add('links')
        ..add(serializers.serialize(object.links,
            specifiedType: const FullType(CategoryResponseLinks)));
    }
    if (object.meta != null) {
      result
        ..add('meta')
        ..add(serializers.serialize(object.meta,
            specifiedType: const FullType(CategoryResponseMeta)));
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
  CategoryResponseModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoryResponseModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CategoryResponseData)]))
              as BuiltList<Object>);
          break;
        case 'links':
          result.links.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CategoryResponseLinks))
              as CategoryResponseLinks);
          break;
        case 'meta':
          result.meta.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CategoryResponseMeta))
              as CategoryResponseMeta);
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

class _$CategoryResponseModel extends CategoryResponseModel {
  @override
  final BuiltList<CategoryResponseData> data;
  @override
  final CategoryResponseLinks links;
  @override
  final CategoryResponseMeta meta;
  @override
  final bool success;
  @override
  final int status;

  factory _$CategoryResponseModel(
          [void Function(CategoryResponseModelBuilder) updates]) =>
      (new CategoryResponseModelBuilder()..update(updates)).build();

  _$CategoryResponseModel._(
      {this.data, this.links, this.meta, this.success, this.status})
      : super._();

  @override
  CategoryResponseModel rebuild(
          void Function(CategoryResponseModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryResponseModelBuilder toBuilder() =>
      new CategoryResponseModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryResponseModel &&
        data == other.data &&
        links == other.links &&
        meta == other.meta &&
        success == other.success &&
        status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, data.hashCode), links.hashCode), meta.hashCode),
            success.hashCode),
        status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CategoryResponseModel')
          ..add('data', data)
          ..add('links', links)
          ..add('meta', meta)
          ..add('success', success)
          ..add('status', status))
        .toString();
  }
}

class CategoryResponseModelBuilder
    implements Builder<CategoryResponseModel, CategoryResponseModelBuilder> {
  _$CategoryResponseModel _$v;

  ListBuilder<CategoryResponseData> _data;
  ListBuilder<CategoryResponseData> get data =>
      _$this._data ??= new ListBuilder<CategoryResponseData>();
  set data(ListBuilder<CategoryResponseData> data) => _$this._data = data;

  CategoryResponseLinksBuilder _links;
  CategoryResponseLinksBuilder get links =>
      _$this._links ??= new CategoryResponseLinksBuilder();
  set links(CategoryResponseLinksBuilder links) => _$this._links = links;

  CategoryResponseMetaBuilder _meta;
  CategoryResponseMetaBuilder get meta =>
      _$this._meta ??= new CategoryResponseMetaBuilder();
  set meta(CategoryResponseMetaBuilder meta) => _$this._meta = meta;

  bool _success;
  bool get success => _$this._success;
  set success(bool success) => _$this._success = success;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  CategoryResponseModelBuilder();

  CategoryResponseModelBuilder get _$this {
    if (_$v != null) {
      _data = _$v.data?.toBuilder();
      _links = _$v.links?.toBuilder();
      _meta = _$v.meta?.toBuilder();
      _success = _$v.success;
      _status = _$v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryResponseModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CategoryResponseModel;
  }

  @override
  void update(void Function(CategoryResponseModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CategoryResponseModel build() {
    _$CategoryResponseModel _$result;
    try {
      _$result = _$v ??
          new _$CategoryResponseModel._(
              data: _data?.build(),
              links: _links?.build(),
              meta: _meta?.build(),
              success: success,
              status: status);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
        _$failedField = 'links';
        _links?.build();
        _$failedField = 'meta';
        _meta?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CategoryResponseModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
