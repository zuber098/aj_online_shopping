// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_links.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BrandLinks> _$brandLinksSerializer = new _$BrandLinksSerializer();

class _$BrandLinksSerializer implements StructuredSerializer<BrandLinks> {
  @override
  final Iterable<Type> types = const [BrandLinks, _$BrandLinks];
  @override
  final String wireName = 'BrandLinks';

  @override
  Iterable<Object> serialize(Serializers serializers, BrandLinks object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.products != null) {
      result
        ..add('products')
        ..add(serializers.serialize(object.products,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BrandLinks deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BrandLinksBuilder();

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
      }
    }

    return result.build();
  }
}

class _$BrandLinks extends BrandLinks {
  @override
  final String products;

  factory _$BrandLinks([void Function(BrandLinksBuilder) updates]) =>
      (new BrandLinksBuilder()..update(updates)).build();

  _$BrandLinks._({this.products}) : super._();

  @override
  BrandLinks rebuild(void Function(BrandLinksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BrandLinksBuilder toBuilder() => new BrandLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BrandLinks && products == other.products;
  }

  @override
  int get hashCode {
    return $jf($jc(0, products.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BrandLinks')
          ..add('products', products))
        .toString();
  }
}

class BrandLinksBuilder implements Builder<BrandLinks, BrandLinksBuilder> {
  _$BrandLinks _$v;

  String _products;
  String get products => _$this._products;
  set products(String products) => _$this._products = products;

  BrandLinksBuilder();

  BrandLinksBuilder get _$this {
    if (_$v != null) {
      _products = _$v.products;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BrandLinks other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BrandLinks;
  }

  @override
  void update(void Function(BrandLinksBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BrandLinks build() {
    final _$result = _$v ?? new _$BrandLinks._(products: products);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
