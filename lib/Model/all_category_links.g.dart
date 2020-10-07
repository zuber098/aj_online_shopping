// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_category_links.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AllCategoryLinks> _$allCategoryLinksSerializer =
    new _$AllCategoryLinksSerializer();

class _$AllCategoryLinksSerializer
    implements StructuredSerializer<AllCategoryLinks> {
  @override
  final Iterable<Type> types = const [AllCategoryLinks, _$AllCategoryLinks];
  @override
  final String wireName = 'AllCategoryLinks';

  @override
  Iterable<Object> serialize(Serializers serializers, AllCategoryLinks object,
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
  AllCategoryLinks deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AllCategoryLinksBuilder();

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

class _$AllCategoryLinks extends AllCategoryLinks {
  @override
  final String products;
  @override
  final String subCategories;

  factory _$AllCategoryLinks(
          [void Function(AllCategoryLinksBuilder) updates]) =>
      (new AllCategoryLinksBuilder()..update(updates)).build();

  _$AllCategoryLinks._({this.products, this.subCategories}) : super._();

  @override
  AllCategoryLinks rebuild(void Function(AllCategoryLinksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AllCategoryLinksBuilder toBuilder() =>
      new AllCategoryLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AllCategoryLinks &&
        products == other.products &&
        subCategories == other.subCategories;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, products.hashCode), subCategories.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AllCategoryLinks')
          ..add('products', products)
          ..add('subCategories', subCategories))
        .toString();
  }
}

class AllCategoryLinksBuilder
    implements Builder<AllCategoryLinks, AllCategoryLinksBuilder> {
  _$AllCategoryLinks _$v;

  String _products;
  String get products => _$this._products;
  set products(String products) => _$this._products = products;

  String _subCategories;
  String get subCategories => _$this._subCategories;
  set subCategories(String subCategories) =>
      _$this._subCategories = subCategories;

  AllCategoryLinksBuilder();

  AllCategoryLinksBuilder get _$this {
    if (_$v != null) {
      _products = _$v.products;
      _subCategories = _$v.subCategories;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AllCategoryLinks other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AllCategoryLinks;
  }

  @override
  void update(void Function(AllCategoryLinksBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AllCategoryLinks build() {
    final _$result = _$v ??
        new _$AllCategoryLinks._(
            products: products, subCategories: subCategories);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
