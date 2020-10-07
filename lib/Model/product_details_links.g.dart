// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_links.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductDetailsLinks> _$productDetailsLinksSerializer =
    new _$ProductDetailsLinksSerializer();

class _$ProductDetailsLinksSerializer
    implements StructuredSerializer<ProductDetailsLinks> {
  @override
  final Iterable<Type> types = const [
    ProductDetailsLinks,
    _$ProductDetailsLinks
  ];
  @override
  final String wireName = 'ProductDetailsLinks';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ProductDetailsLinks object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.reviews != null) {
      result
        ..add('reviews')
        ..add(serializers.serialize(object.reviews,
            specifiedType: const FullType(String)));
    }
    if (object.related != null) {
      result
        ..add('related')
        ..add(serializers.serialize(object.related,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ProductDetailsLinks deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductDetailsLinksBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'reviews':
          result.reviews = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'related':
          result.related = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ProductDetailsLinks extends ProductDetailsLinks {
  @override
  final String reviews;
  @override
  final String related;

  factory _$ProductDetailsLinks(
          [void Function(ProductDetailsLinksBuilder) updates]) =>
      (new ProductDetailsLinksBuilder()..update(updates)).build();

  _$ProductDetailsLinks._({this.reviews, this.related}) : super._();

  @override
  ProductDetailsLinks rebuild(
          void Function(ProductDetailsLinksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductDetailsLinksBuilder toBuilder() =>
      new ProductDetailsLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductDetailsLinks &&
        reviews == other.reviews &&
        related == other.related;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, reviews.hashCode), related.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductDetailsLinks')
          ..add('reviews', reviews)
          ..add('related', related))
        .toString();
  }
}

class ProductDetailsLinksBuilder
    implements Builder<ProductDetailsLinks, ProductDetailsLinksBuilder> {
  _$ProductDetailsLinks _$v;

  String _reviews;
  String get reviews => _$this._reviews;
  set reviews(String reviews) => _$this._reviews = reviews;

  String _related;
  String get related => _$this._related;
  set related(String related) => _$this._related = related;

  ProductDetailsLinksBuilder();

  ProductDetailsLinksBuilder get _$this {
    if (_$v != null) {
      _reviews = _$v.reviews;
      _related = _$v.related;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductDetailsLinks other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProductDetailsLinks;
  }

  @override
  void update(void Function(ProductDetailsLinksBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductDetailsLinks build() {
    final _$result =
        _$v ?? new _$ProductDetailsLinks._(reviews: reviews, related: related);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
