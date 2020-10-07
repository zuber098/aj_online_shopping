// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_choise_option.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductDetailsChoiseOption> _$productDetailsChoiseOptionSerializer =
    new _$ProductDetailsChoiseOptionSerializer();

class _$ProductDetailsChoiseOptionSerializer
    implements StructuredSerializer<ProductDetailsChoiseOption> {
  @override
  final Iterable<Type> types = const [
    ProductDetailsChoiseOption,
    _$ProductDetailsChoiseOption
  ];
  @override
  final String wireName = 'ProductDetailsChoiseOption';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ProductDetailsChoiseOption object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'options',
      serializers.serialize(object.options,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  ProductDetailsChoiseOption deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductDetailsChoiseOptionBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'options':
          result.options.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ProductDetailsChoiseOption extends ProductDetailsChoiseOption {
  @override
  final String name;
  @override
  final String title;
  @override
  final BuiltList<String> options;

  factory _$ProductDetailsChoiseOption(
          [void Function(ProductDetailsChoiseOptionBuilder) updates]) =>
      (new ProductDetailsChoiseOptionBuilder()..update(updates)).build();

  _$ProductDetailsChoiseOption._({this.name, this.title, this.options})
      : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('ProductDetailsChoiseOption', 'name');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('ProductDetailsChoiseOption', 'title');
    }
    if (options == null) {
      throw new BuiltValueNullFieldError(
          'ProductDetailsChoiseOption', 'options');
    }
  }

  @override
  ProductDetailsChoiseOption rebuild(
          void Function(ProductDetailsChoiseOptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductDetailsChoiseOptionBuilder toBuilder() =>
      new ProductDetailsChoiseOptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductDetailsChoiseOption &&
        name == other.name &&
        title == other.title &&
        options == other.options;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, name.hashCode), title.hashCode), options.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductDetailsChoiseOption')
          ..add('name', name)
          ..add('title', title)
          ..add('options', options))
        .toString();
  }
}

class ProductDetailsChoiseOptionBuilder
    implements
        Builder<ProductDetailsChoiseOption, ProductDetailsChoiseOptionBuilder> {
  _$ProductDetailsChoiseOption _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  ListBuilder<String> _options;
  ListBuilder<String> get options =>
      _$this._options ??= new ListBuilder<String>();
  set options(ListBuilder<String> options) => _$this._options = options;

  ProductDetailsChoiseOptionBuilder();

  ProductDetailsChoiseOptionBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _title = _$v.title;
      _options = _$v.options?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductDetailsChoiseOption other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProductDetailsChoiseOption;
  }

  @override
  void update(void Function(ProductDetailsChoiseOptionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductDetailsChoiseOption build() {
    _$ProductDetailsChoiseOption _$result;
    try {
      _$result = _$v ??
          new _$ProductDetailsChoiseOption._(
              name: name, title: title, options: options.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'options';
        options.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProductDetailsChoiseOption', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
