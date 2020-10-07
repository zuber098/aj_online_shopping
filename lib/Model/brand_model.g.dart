// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BrandModel> _$brandModelSerializer = new _$BrandModelSerializer();

class _$BrandModelSerializer implements StructuredSerializer<BrandModel> {
  @override
  final Iterable<Type> types = const [BrandModel, _$BrandModel];
  @override
  final String wireName = 'BrandModel';

  @override
  Iterable<Object> serialize(Serializers serializers, BrandModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.logo != null) {
      result
        ..add('logo')
        ..add(serializers.serialize(object.logo,
            specifiedType: const FullType(String)));
    }
    if (object.links != null) {
      result
        ..add('links')
        ..add(serializers.serialize(object.links,
            specifiedType: const FullType(BrandLinks)));
    }
    return result;
  }

  @override
  BrandModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BrandModelBuilder();

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
        case 'logo':
          result.logo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'links':
          result.links.replace(serializers.deserialize(value,
              specifiedType: const FullType(BrandLinks)) as BrandLinks);
          break;
      }
    }

    return result.build();
  }
}

class _$BrandModel extends BrandModel {
  @override
  final String name;
  @override
  final String logo;
  @override
  final BrandLinks links;

  factory _$BrandModel([void Function(BrandModelBuilder) updates]) =>
      (new BrandModelBuilder()..update(updates)).build();

  _$BrandModel._({this.name, this.logo, this.links}) : super._();

  @override
  BrandModel rebuild(void Function(BrandModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BrandModelBuilder toBuilder() => new BrandModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BrandModel &&
        name == other.name &&
        logo == other.logo &&
        links == other.links;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, name.hashCode), logo.hashCode), links.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BrandModel')
          ..add('name', name)
          ..add('logo', logo)
          ..add('links', links))
        .toString();
  }
}

class BrandModelBuilder implements Builder<BrandModel, BrandModelBuilder> {
  _$BrandModel _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _logo;
  String get logo => _$this._logo;
  set logo(String logo) => _$this._logo = logo;

  BrandLinksBuilder _links;
  BrandLinksBuilder get links => _$this._links ??= new BrandLinksBuilder();
  set links(BrandLinksBuilder links) => _$this._links = links;

  BrandModelBuilder();

  BrandModelBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _logo = _$v.logo;
      _links = _$v.links?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BrandModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BrandModel;
  }

  @override
  void update(void Function(BrandModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BrandModel build() {
    _$BrandModel _$result;
    try {
      _$result = _$v ??
          new _$BrandModel._(name: name, logo: logo, links: _links?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'links';
        _links?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BrandModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
