// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_category_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AllCategoryData> _$allCategoryDataSerializer =
    new _$AllCategoryDataSerializer();

class _$AllCategoryDataSerializer
    implements StructuredSerializer<AllCategoryData> {
  @override
  final Iterable<Type> types = const [AllCategoryData, _$AllCategoryData];
  @override
  final String wireName = 'AllCategoryData';

  @override
  Iterable<Object> serialize(Serializers serializers, AllCategoryData object,
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
            specifiedType: const FullType(AllCategoryLinks)));
    }
    return result;
  }

  @override
  AllCategoryData deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AllCategoryDataBuilder();

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
                  specifiedType: const FullType(AllCategoryLinks))
              as AllCategoryLinks);
          break;
      }
    }

    return result.build();
  }
}

class _$AllCategoryData extends AllCategoryData {
  @override
  final String name;
  @override
  final String banner;
  @override
  final String icon;
  @override
  final AllCategoryLinks links;

  factory _$AllCategoryData([void Function(AllCategoryDataBuilder) updates]) =>
      (new AllCategoryDataBuilder()..update(updates)).build();

  _$AllCategoryData._({this.name, this.banner, this.icon, this.links})
      : super._();

  @override
  AllCategoryData rebuild(void Function(AllCategoryDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AllCategoryDataBuilder toBuilder() =>
      new AllCategoryDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AllCategoryData &&
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
    return (newBuiltValueToStringHelper('AllCategoryData')
          ..add('name', name)
          ..add('banner', banner)
          ..add('icon', icon)
          ..add('links', links))
        .toString();
  }
}

class AllCategoryDataBuilder
    implements Builder<AllCategoryData, AllCategoryDataBuilder> {
  _$AllCategoryData _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _banner;
  String get banner => _$this._banner;
  set banner(String banner) => _$this._banner = banner;

  String _icon;
  String get icon => _$this._icon;
  set icon(String icon) => _$this._icon = icon;

  AllCategoryLinksBuilder _links;
  AllCategoryLinksBuilder get links =>
      _$this._links ??= new AllCategoryLinksBuilder();
  set links(AllCategoryLinksBuilder links) => _$this._links = links;

  AllCategoryDataBuilder();

  AllCategoryDataBuilder get _$this {
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
  void replace(AllCategoryData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AllCategoryData;
  }

  @override
  void update(void Function(AllCategoryDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AllCategoryData build() {
    _$AllCategoryData _$result;
    try {
      _$result = _$v ??
          new _$AllCategoryData._(
              name: name, banner: banner, icon: icon, links: _links?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'links';
        _links?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AllCategoryData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
