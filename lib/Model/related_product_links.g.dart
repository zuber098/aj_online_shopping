// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'related_product_links.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RelatedProductLinks> _$relatedProductLinksSerializer =
    new _$RelatedProductLinksSerializer();

class _$RelatedProductLinksSerializer
    implements StructuredSerializer<RelatedProductLinks> {
  @override
  final Iterable<Type> types = const [
    RelatedProductLinks,
    _$RelatedProductLinks
  ];
  @override
  final String wireName = 'RelatedProductLinks';

  @override
  Iterable<Object> serialize(
      Serializers serializers, RelatedProductLinks object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.details != null) {
      result
        ..add('details')
        ..add(serializers.serialize(object.details,
            specifiedType: const FullType(String)));
    }
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
    if (object.topFromSeller != null) {
      result
        ..add('top_from_seller')
        ..add(serializers.serialize(object.topFromSeller,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  RelatedProductLinks deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RelatedProductLinksBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'details':
          result.details = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'reviews':
          result.reviews = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'related':
          result.related = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'top_from_seller':
          result.topFromSeller = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$RelatedProductLinks extends RelatedProductLinks {
  @override
  final String details;
  @override
  final String reviews;
  @override
  final String related;
  @override
  final String topFromSeller;

  factory _$RelatedProductLinks(
          [void Function(RelatedProductLinksBuilder) updates]) =>
      (new RelatedProductLinksBuilder()..update(updates)).build();

  _$RelatedProductLinks._(
      {this.details, this.reviews, this.related, this.topFromSeller})
      : super._();

  @override
  RelatedProductLinks rebuild(
          void Function(RelatedProductLinksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RelatedProductLinksBuilder toBuilder() =>
      new RelatedProductLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RelatedProductLinks &&
        details == other.details &&
        reviews == other.reviews &&
        related == other.related &&
        topFromSeller == other.topFromSeller;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, details.hashCode), reviews.hashCode), related.hashCode),
        topFromSeller.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RelatedProductLinks')
          ..add('details', details)
          ..add('reviews', reviews)
          ..add('related', related)
          ..add('topFromSeller', topFromSeller))
        .toString();
  }
}

class RelatedProductLinksBuilder
    implements Builder<RelatedProductLinks, RelatedProductLinksBuilder> {
  _$RelatedProductLinks _$v;

  String _details;
  String get details => _$this._details;
  set details(String details) => _$this._details = details;

  String _reviews;
  String get reviews => _$this._reviews;
  set reviews(String reviews) => _$this._reviews = reviews;

  String _related;
  String get related => _$this._related;
  set related(String related) => _$this._related = related;

  String _topFromSeller;
  String get topFromSeller => _$this._topFromSeller;
  set topFromSeller(String topFromSeller) =>
      _$this._topFromSeller = topFromSeller;

  RelatedProductLinksBuilder();

  RelatedProductLinksBuilder get _$this {
    if (_$v != null) {
      _details = _$v.details;
      _reviews = _$v.reviews;
      _related = _$v.related;
      _topFromSeller = _$v.topFromSeller;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RelatedProductLinks other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RelatedProductLinks;
  }

  @override
  void update(void Function(RelatedProductLinksBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RelatedProductLinks build() {
    final _$result = _$v ??
        new _$RelatedProductLinks._(
            details: details,
            reviews: reviews,
            related: related,
            topFromSeller: topFromSeller);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
