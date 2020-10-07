// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slider_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SliderData> _$sliderDataSerializer = new _$SliderDataSerializer();

class _$SliderDataSerializer implements StructuredSerializer<SliderData> {
  @override
  final Iterable<Type> types = const [SliderData, _$SliderData];
  @override
  final String wireName = 'SliderData';

  @override
  Iterable<Object> serialize(Serializers serializers, SliderData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.photo != null) {
      result
        ..add('photo')
        ..add(serializers.serialize(object.photo,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SliderData deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SliderDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'photo':
          result.photo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SliderData extends SliderData {
  @override
  final String photo;

  factory _$SliderData([void Function(SliderDataBuilder) updates]) =>
      (new SliderDataBuilder()..update(updates)).build();

  _$SliderData._({this.photo}) : super._();

  @override
  SliderData rebuild(void Function(SliderDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SliderDataBuilder toBuilder() => new SliderDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SliderData && photo == other.photo;
  }

  @override
  int get hashCode {
    return $jf($jc(0, photo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SliderData')..add('photo', photo))
        .toString();
  }
}

class SliderDataBuilder implements Builder<SliderData, SliderDataBuilder> {
  _$SliderData _$v;

  String _photo;
  String get photo => _$this._photo;
  set photo(String photo) => _$this._photo = photo;

  SliderDataBuilder();

  SliderDataBuilder get _$this {
    if (_$v != null) {
      _photo = _$v.photo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SliderData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SliderData;
  }

  @override
  void update(void Function(SliderDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SliderData build() {
    final _$result = _$v ?? new _$SliderData._(photo: photo);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
