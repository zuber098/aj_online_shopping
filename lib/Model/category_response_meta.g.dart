// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_response_meta.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CategoryResponseMeta> _$categoryResponseMetaSerializer =
    new _$CategoryResponseMetaSerializer();

class _$CategoryResponseMetaSerializer
    implements StructuredSerializer<CategoryResponseMeta> {
  @override
  final Iterable<Type> types = const [
    CategoryResponseMeta,
    _$CategoryResponseMeta
  ];
  @override
  final String wireName = 'CategoryResponseMeta';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CategoryResponseMeta object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.currentPage != null) {
      result
        ..add('current_page')
        ..add(serializers.serialize(object.currentPage,
            specifiedType: const FullType(int)));
    }
    if (object.from != null) {
      result
        ..add('from')
        ..add(serializers.serialize(object.from,
            specifiedType: const FullType(int)));
    }
    if (object.lastPage != null) {
      result
        ..add('last_page')
        ..add(serializers.serialize(object.lastPage,
            specifiedType: const FullType(int)));
    }
    if (object.path != null) {
      result
        ..add('path')
        ..add(serializers.serialize(object.path,
            specifiedType: const FullType(String)));
    }
    if (object.perPage != null) {
      result
        ..add('per_page')
        ..add(serializers.serialize(object.perPage,
            specifiedType: const FullType(int)));
    }
    if (object.to != null) {
      result
        ..add('to')
        ..add(serializers.serialize(object.to,
            specifiedType: const FullType(int)));
    }
    if (object.total != null) {
      result
        ..add('total')
        ..add(serializers.serialize(object.total,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  CategoryResponseMeta deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CategoryResponseMetaBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'current_page':
          result.currentPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'from':
          result.from = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'last_page':
          result.lastPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'path':
          result.path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'per_page':
          result.perPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'to':
          result.to = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CategoryResponseMeta extends CategoryResponseMeta {
  @override
  final int currentPage;
  @override
  final int from;
  @override
  final int lastPage;
  @override
  final String path;
  @override
  final int perPage;
  @override
  final int to;
  @override
  final int total;

  factory _$CategoryResponseMeta(
          [void Function(CategoryResponseMetaBuilder) updates]) =>
      (new CategoryResponseMetaBuilder()..update(updates)).build();

  _$CategoryResponseMeta._(
      {this.currentPage,
      this.from,
      this.lastPage,
      this.path,
      this.perPage,
      this.to,
      this.total})
      : super._();

  @override
  CategoryResponseMeta rebuild(
          void Function(CategoryResponseMetaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryResponseMetaBuilder toBuilder() =>
      new CategoryResponseMetaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CategoryResponseMeta &&
        currentPage == other.currentPage &&
        from == other.from &&
        lastPage == other.lastPage &&
        path == other.path &&
        perPage == other.perPage &&
        to == other.to &&
        total == other.total;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, currentPage.hashCode), from.hashCode),
                        lastPage.hashCode),
                    path.hashCode),
                perPage.hashCode),
            to.hashCode),
        total.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CategoryResponseMeta')
          ..add('currentPage', currentPage)
          ..add('from', from)
          ..add('lastPage', lastPage)
          ..add('path', path)
          ..add('perPage', perPage)
          ..add('to', to)
          ..add('total', total))
        .toString();
  }
}

class CategoryResponseMetaBuilder
    implements Builder<CategoryResponseMeta, CategoryResponseMetaBuilder> {
  _$CategoryResponseMeta _$v;

  int _currentPage;
  int get currentPage => _$this._currentPage;
  set currentPage(int currentPage) => _$this._currentPage = currentPage;

  int _from;
  int get from => _$this._from;
  set from(int from) => _$this._from = from;

  int _lastPage;
  int get lastPage => _$this._lastPage;
  set lastPage(int lastPage) => _$this._lastPage = lastPage;

  String _path;
  String get path => _$this._path;
  set path(String path) => _$this._path = path;

  int _perPage;
  int get perPage => _$this._perPage;
  set perPage(int perPage) => _$this._perPage = perPage;

  int _to;
  int get to => _$this._to;
  set to(int to) => _$this._to = to;

  int _total;
  int get total => _$this._total;
  set total(int total) => _$this._total = total;

  CategoryResponseMetaBuilder();

  CategoryResponseMetaBuilder get _$this {
    if (_$v != null) {
      _currentPage = _$v.currentPage;
      _from = _$v.from;
      _lastPage = _$v.lastPage;
      _path = _$v.path;
      _perPage = _$v.perPage;
      _to = _$v.to;
      _total = _$v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CategoryResponseMeta other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CategoryResponseMeta;
  }

  @override
  void update(void Function(CategoryResponseMetaBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CategoryResponseMeta build() {
    final _$result = _$v ??
        new _$CategoryResponseMeta._(
            currentPage: currentPage,
            from: from,
            lastPage: lastPage,
            path: path,
            perPage: perPage,
            to: to,
            total: total);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
