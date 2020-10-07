// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoryModel> _$categoryModelSerializer =
    new _$CategoryModelSerializer();

class _$CategoryModelSerializer implements StructuredSerializer<CategoryModel> {
  @override
  final Iterable<Type> types = const [CategoryModel, _$CategoryModel];
  @override
  final String wireName = 'CategoryModel';

  @override
  Iterable<Object> serialize(Serializers serializers, CategoryModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.banner != null) {
      result
        ..add('banner')
        ..add(serializers.serialize(object.banner,
            specifiedType: const FullType(String)));
    }
    if (object.icon != null) {
      result
        ..add('icon')
        ..add(serializers.serialize(object.icon,
            specifiedType: const FullType(String)));
    }
    if (object.links != null) {
      result
        ..add('links')
        ..add(serializers.serialize(object.links,
            specifiedType: const FullType(CategoryLinks)));
    }
    return result;
  }

  @override
  CategoryModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoryModelBuilder();

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
        case 'banner':
          result.banner = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'links':
          result.links.replace(serializers.deserialize(value,
              specifiedType: const FullType(CategoryLinks)) as CategoryLinks);
          break;
      }
    }

    return result.build();
  }
}

class _$CategoryModel extends CategoryModel {
  @override
  final String name;
  @override
  final String banner;
  @override
  final String icon;
  @override
  final CategoryLinks links;

  factory _$CategoryModel([void Function(CategoryModelBuilder) updates]) =>
      (new CategoryModelBuilder()..update(updates)).build();

  _$CategoryModel._({this.name, this.banner, this.icon, this.links})
      : super._();

  @override
  CategoryModel rebuild(void Function(CategoryModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryModelBuilder toBuilder() => new CategoryModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryModel &&
        name == other.name &&
        banner == other.banner &&
        icon == other.icon &&
        links == other.links;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), banner.hashCode), icon.hashCode),
        links.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CategoryModel')
          ..add('name', name)
          ..add('banner', banner)
          ..add('icon', icon)
          ..add('links', links))
        .toString();
  }
}

class CategoryModelBuilder
    implements Builder<CategoryModel, CategoryModelBuilder> {
  _$CategoryModel _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _banner;
  String get banner => _$this._banner;
  set banner(String banner) => _$this._banner = banner;

  String _icon;
  String get icon => _$this._icon;
  set icon(String icon) => _$this._icon = icon;

  CategoryLinksBuilder _links;
  CategoryLinksBuilder get links =>
      _$this._links ??= new CategoryLinksBuilder();
  set links(CategoryLinksBuilder links) => _$this._links = links;

  CategoryModelBuilder();

  CategoryModelBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _banner = _$v.banner;
      _icon = _$v.icon;
      _links = _$v.links?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CategoryModel;
  }

  @override
  void update(void Function(CategoryModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CategoryModel build() {
    _$CategoryModel _$result;
    try {
      _$result = _$v ??
          new _$CategoryModel._(
              name: name, banner: banner, icon: icon, links: _links?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'links';
        _links?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CategoryModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
