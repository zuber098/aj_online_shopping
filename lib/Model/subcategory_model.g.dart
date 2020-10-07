// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subcategory_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SubcategoryModel> _$subcategoryModelSerializer =
    new _$SubcategoryModelSerializer();

class _$SubcategoryModelSerializer
    implements StructuredSerializer<SubcategoryModel> {
  @override
  final Iterable<Type> types = const [SubcategoryModel, _$SubcategoryModel];
  @override
  final String wireName = 'SubcategoryModel';

  @override
  Iterable<Object> serialize(Serializers serializers, SubcategoryModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.links != null) {
      result
        ..add('links')
        ..add(serializers.serialize(object.links,
            specifiedType: const FullType(SubcategoryLinks)));
    }
    return result;
  }

  @override
  SubcategoryModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SubcategoryModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'links':
          result.links.replace(serializers.deserialize(value,
                  specifiedType: const FullType(SubcategoryLinks))
              as SubcategoryLinks);
          break;
      }
    }

    return result.build();
  }
}

class _$SubcategoryModel extends SubcategoryModel {
  @override
  final String name;
  @override
  final SubcategoryLinks links;

  factory _$SubcategoryModel(
          [void Function(SubcategoryModelBuilder) updates]) =>
      (new SubcategoryModelBuilder()..update(updates)).build();

  _$SubcategoryModel._({this.name, this.links}) : super._();

  @override
  SubcategoryModel rebuild(void Function(SubcategoryModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubcategoryModelBuilder toBuilder() =>
      new SubcategoryModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubcategoryModel &&
        name == other.name &&
        links == other.links;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), links.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SubcategoryModel')
          ..add('name', name)
          ..add('links', links))
        .toString();
  }
}

class SubcategoryModelBuilder
    implements Builder<SubcategoryModel, SubcategoryModelBuilder> {
  _$SubcategoryModel _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  SubcategoryLinksBuilder _links;
  SubcategoryLinksBuilder get links =>
      _$this._links ??= new SubcategoryLinksBuilder();
  set links(SubcategoryLinksBuilder links) => _$this._links = links;

  SubcategoryModelBuilder();

  SubcategoryModelBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _links = _$v.links?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubcategoryModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SubcategoryModel;
  }

  @override
  void update(void Function(SubcategoryModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SubcategoryModel build() {
    _$SubcategoryModel _$result;
    try {
      _$result =
          _$v ?? new _$SubcategoryModel._(name: name, links: _links?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'links';
        _links?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SubcategoryModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
