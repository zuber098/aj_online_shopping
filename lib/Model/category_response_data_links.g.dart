// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_response_data_links.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoryResponseDataLinks> _$categoryResponseDataLinksSerializer =
    new _$CategoryResponseDataLinksSerializer();

class _$CategoryResponseDataLinksSerializer
    implements StructuredSerializer<CategoryResponseDataLinks> {
  @override
  final Iterable<Type> types = const [
    CategoryResponseDataLinks,
    _$CategoryResponseDataLinks
  ];
  @override
  final String wireName = 'CategoryResponseDataLinks';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CategoryResponseDataLinks object,
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
  CategoryResponseDataLinks deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoryResponseDataLinksBuilder();

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

class _$CategoryResponseDataLinks extends CategoryResponseDataLinks {
  @override
  final String details;
  @override
  final String reviews;
  @override
  final String related;
  @override
  final String topFromSeller;

  factory _$CategoryResponseDataLinks(
          [void Function(CategoryResponseDataLinksBuilder) updates]) =>
      (new CategoryResponseDataLinksBuilder()..update(updates)).build();

  _$CategoryResponseDataLinks._(
      {this.details, this.reviews, this.related, this.topFromSeller})
      : super._();

  @override
  CategoryResponseDataLinks rebuild(
          void Function(CategoryResponseDataLinksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryResponseDataLinksBuilder toBuilder() =>
      new CategoryResponseDataLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryResponseDataLinks &&
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
    return (newBuiltValueToStringHelper('CategoryResponseDataLinks')
          ..add('details', details)
          ..add('reviews', reviews)
          ..add('related', related)
          ..add('topFromSeller', topFromSeller))
        .toString();
  }
}

class CategoryResponseDataLinksBuilder
    implements
        Builder<CategoryResponseDataLinks, CategoryResponseDataLinksBuilder> {
  _$CategoryResponseDataLinks _$v;

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

  CategoryResponseDataLinksBuilder();

  CategoryResponseDataLinksBuilder get _$this {
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
  void replace(CategoryResponseDataLinks other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CategoryResponseDataLinks;
  }

  @override
  void update(void Function(CategoryResponseDataLinksBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CategoryResponseDataLinks build() {
    final _$result = _$v ??
        new _$CategoryResponseDataLinks._(
            details: details,
            reviews: reviews,
            related: related,
            topFromSeller: topFromSeller);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
