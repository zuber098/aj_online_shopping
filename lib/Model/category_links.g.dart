// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_links.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoryLinks> _$categoryLinksSerializer =
    new _$CategoryLinksSerializer();

class _$CategoryLinksSerializer implements StructuredSerializer<CategoryLinks> {
  @override
  final Iterable<Type> types = const [CategoryLinks, _$CategoryLinks];
  @override
  final String wireName = 'CategoryLinks';

  @override
  Iterable<Object> serialize(Serializers serializers, CategoryLinks object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.products != null) {
      result
        ..add('products')
        ..add(serializers.serialize(object.products,
            specifiedType: const FullType(String)));
    }
    if (object.subCategories != null) {
      result
        ..add('sub_categories')
        ..add(serializers.serialize(object.subCategories,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CategoryLinks deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoryLinksBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'products':
          result.products = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sub_categories':
          result.subCategories = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CategoryLinks extends CategoryLinks {
  @override
  final String products;
  @override
  final String subCategories;

  factory _$CategoryLinks([void Function(CategoryLinksBuilder) updates]) =>
      (new CategoryLinksBuilder()..update(updates)).build();

  _$CategoryLinks._({this.products, this.subCategories}) : super._();

  @override
  CategoryLinks rebuild(void Function(CategoryLinksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryLinksBuilder toBuilder() => new CategoryLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryLinks &&
        products == other.products &&
        subCategories == other.subCategories;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, products.hashCode), subCategories.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CategoryLinks')
          ..add('products', products)
          ..add('subCategories', subCategories))
        .toString();
  }
}

class CategoryLinksBuilder
    implements Builder<CategoryLinks, CategoryLinksBuilder> {
  _$CategoryLinks _$v;

  String _products;
  String get products => _$this._products;
  set products(String products) => _$this._products = products;

  String _subCategories;
  String get subCategories => _$this._subCategories;
  set subCategories(String subCategories) =>
      _$this._subCategories = subCategories;

  CategoryLinksBuilder();

  CategoryLinksBuilder get _$this {
    if (_$v != null) {
      _products = _$v.products;
      _subCategories = _$v.subCategories;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryLinks other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CategoryLinks;
  }

  @override
  void update(void Function(CategoryLinksBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CategoryLinks build() {
    final _$result = _$v ??
        new _$CategoryLinks._(products: products, subCategories: subCategories);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
