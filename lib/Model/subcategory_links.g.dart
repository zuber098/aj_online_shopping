// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subcategory_links.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SubcategoryLinks> _$subcategoryLinksSerializer =
    new _$SubcategoryLinksSerializer();

class _$SubcategoryLinksSerializer
    implements StructuredSerializer<SubcategoryLinks> {
  @override
  final Iterable<Type> types = const [SubcategoryLinks, _$SubcategoryLinks];
  @override
  final String wireName = 'SubcategoryLinks';

  @override
  Iterable<Object> serialize(Serializers serializers, SubcategoryLinks object,
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
  SubcategoryLinks deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SubcategoryLinksBuilder();

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

class _$SubcategoryLinks extends SubcategoryLinks {
  @override
  final String products;

  factory _$SubcategoryLinks(
          [void Function(SubcategoryLinksBuilder) updates]) =>
      (new SubcategoryLinksBuilder()..update(updates)).build();

  _$SubcategoryLinks._({this.products}) : super._();

  @override
  SubcategoryLinks rebuild(void Function(SubcategoryLinksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubcategoryLinksBuilder toBuilder() =>
      new SubcategoryLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubcategoryLinks && products == other.products;
  }

  @override
  int get hashCode {
    return $jf($jc(0, products.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SubcategoryLinks')
          ..add('products', products))
        .toString();
  }
}

class SubcategoryLinksBuilder
    implements Builder<SubcategoryLinks, SubcategoryLinksBuilder> {
  _$SubcategoryLinks _$v;

  String _products;
  String get products => _$this._products;
  set products(String products) => _$this._products = products;

  SubcategoryLinksBuilder();

  SubcategoryLinksBuilder get _$this {
    if (_$v != null) {
      _products = _$v.products;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubcategoryLinks other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SubcategoryLinks;
  }

  @override
  void update(void Function(SubcategoryLinksBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SubcategoryLinks build() {
    final _$result = _$v ?? new _$SubcategoryLinks._(products: products);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
