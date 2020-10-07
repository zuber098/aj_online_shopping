// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_response_links.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoryResponseLinks> _$categoryResponseLinksSerializer =
    new _$CategoryResponseLinksSerializer();

class _$CategoryResponseLinksSerializer
    implements StructuredSerializer<CategoryResponseLinks> {
  @override
  final Iterable<Type> types = const [
    CategoryResponseLinks,
    _$CategoryResponseLinks
  ];
  @override
  final String wireName = 'CategoryResponseLinks';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CategoryResponseLinks object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.first != null) {
      result
        ..add('first')
        ..add(serializers.serialize(object.first,
            specifiedType: const FullType(String)));
    }
    if (object.last != null) {
      result
        ..add('last')
        ..add(serializers.serialize(object.last,
            specifiedType: const FullType(String)));
    }
    if (object.prev != null) {
      result
        ..add('prev')
        ..add(serializers.serialize(object.prev,
            specifiedType: const FullType(String)));
    }
    if (object.next != null) {
      result
        ..add('next')
        ..add(serializers.serialize(object.next,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CategoryResponseLinks deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoryResponseLinksBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'first':
          result.first = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'last':
          result.last = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'prev':
          result.prev = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'next':
          result.next = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CategoryResponseLinks extends CategoryResponseLinks {
  @override
  final String first;
  @override
  final String last;
  @override
  final String prev;
  @override
  final String next;

  factory _$CategoryResponseLinks(
          [void Function(CategoryResponseLinksBuilder) updates]) =>
      (new CategoryResponseLinksBuilder()..update(updates)).build();

  _$CategoryResponseLinks._({this.first, this.last, this.prev, this.next})
      : super._();

  @override
  CategoryResponseLinks rebuild(
          void Function(CategoryResponseLinksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryResponseLinksBuilder toBuilder() =>
      new CategoryResponseLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryResponseLinks &&
        first == other.first &&
        last == other.last &&
        prev == other.prev &&
        next == other.next;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, first.hashCode), last.hashCode), prev.hashCode),
        next.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CategoryResponseLinks')
          ..add('first', first)
          ..add('last', last)
          ..add('prev', prev)
          ..add('next', next))
        .toString();
  }
}

class CategoryResponseLinksBuilder
    implements Builder<CategoryResponseLinks, CategoryResponseLinksBuilder> {
  _$CategoryResponseLinks _$v;

  String _first;
  String get first => _$this._first;
  set first(String first) => _$this._first = first;

  String _last;
  String get last => _$this._last;
  set last(String last) => _$this._last = last;

  String _prev;
  String get prev => _$this._prev;
  set prev(String prev) => _$this._prev = prev;

  String _next;
  String get next => _$this._next;
  set next(String next) => _$this._next = next;

  CategoryResponseLinksBuilder();

  CategoryResponseLinksBuilder get _$this {
    if (_$v != null) {
      _first = _$v.first;
      _last = _$v.last;
      _prev = _$v.prev;
      _next = _$v.next;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryResponseLinks other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CategoryResponseLinks;
  }

  @override
  void update(void Function(CategoryResponseLinksBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CategoryResponseLinks build() {
    final _$result = _$v ??
        new _$CategoryResponseLinks._(
            first: first, last: last, prev: prev, next: next);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
