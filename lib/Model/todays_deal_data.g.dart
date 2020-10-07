// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todays_deal_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TodaysDealData> _$todaysDealDataSerializer =
    new _$TodaysDealDataSerializer();

class _$TodaysDealDataSerializer
    implements StructuredSerializer<TodaysDealData> {
  @override
  final Iterable<Type> types = const [TodaysDealData, _$TodaysDealData];
  @override
  final String wireName = 'TodaysDealData';

  @override
  Iterable<Object> serialize(Serializers serializers, TodaysDealData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.photos != null) {
      result
        ..add('photos')
        ..add(serializers.serialize(object.photos,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.thumbnailImage != null) {
      result
        ..add('thumbnail_image')
        ..add(serializers.serialize(object.thumbnailImage,
            specifiedType: const FullType(String)));
    }
    if (object.featuredImage != null) {
      result
        ..add('featured_image')
        ..add(serializers.serialize(object.featuredImage,
            specifiedType: const FullType(String)));
    }
    if (object.flashDealImage != null) {
      result
        ..add('flash_deal_image')
        ..add(serializers.serialize(object.flashDealImage,
            specifiedType: const FullType(String)));
    }
    if (object.basePrice != null) {
      result
        ..add('base_price')
        ..add(serializers.serialize(object.basePrice,
            specifiedType: const FullType(int)));
    }
    if (object.baseDiscountedPrice != null) {
      result
        ..add('base_discounted_price')
        ..add(serializers.serialize(object.baseDiscountedPrice,
            specifiedType: const FullType(int)));
    }
    if (object.todaysDeal != null) {
      result
        ..add('todays_deal')
        ..add(serializers.serialize(object.todaysDeal,
            specifiedType: const FullType(int)));
    }
    if (object.featured != null) {
      result
        ..add('featured')
        ..add(serializers.serialize(object.featured,
            specifiedType: const FullType(int)));
    }
    if (object.unit != null) {
      result
        ..add('unit')
        ..add(serializers.serialize(object.unit,
            specifiedType: const FullType(String)));
    }
    if (object.discount != null) {
      result
        ..add('discount')
        ..add(serializers.serialize(object.discount,
            specifiedType: const FullType(int)));
    }
    if (object.discountType != null) {
      result
        ..add('discount_type')
        ..add(serializers.serialize(object.discountType,
            specifiedType: const FullType(String)));
    }
    if (object.rating != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(object.rating,
            specifiedType: const FullType(int)));
    }
    if (object.sales != null) {
      result
        ..add('sales')
        ..add(serializers.serialize(object.sales,
            specifiedType: const FullType(int)));
    }
    if (object.links != null) {
      result
        ..add('links')
        ..add(serializers.serialize(object.links,
            specifiedType: const FullType(TodaysDealLinks)));
    }
    return result;
  }

  @override
  TodaysDealData deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TodaysDealDataBuilder();

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
        case 'photos':
          result.photos.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'thumbnail_image':
          result.thumbnailImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'featured_image':
          result.featuredImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'flash_deal_image':
          result.flashDealImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'base_price':
          result.basePrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'base_discounted_price':
          result.baseDiscountedPrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'todays_deal':
          result.todaysDeal = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'featured':
          result.featured = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'unit':
          result.unit = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'discount':
          result.discount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'discount_type':
          result.discountType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'sales':
          result.sales = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'links':
          result.links.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TodaysDealLinks))
              as TodaysDealLinks);
          break;
      }
    }

    return result.build();
  }
}

class _$TodaysDealData extends TodaysDealData {
  @override
  final String name;
  @override
  final BuiltList<String> photos;
  @override
  final String thumbnailImage;
  @override
  final String featuredImage;
  @override
  final String flashDealImage;
  @override
  final int basePrice;
  @override
  final int baseDiscountedPrice;
  @override
  final int todaysDeal;
  @override
  final int featured;
  @override
  final String unit;
  @override
  final int discount;
  @override
  final String discountType;
  @override
  final int rating;
  @override
  final int sales;
  @override
  final TodaysDealLinks links;

  factory _$TodaysDealData([void Function(TodaysDealDataBuilder) updates]) =>
      (new TodaysDealDataBuilder()..update(updates)).build();

  _$TodaysDealData._(
      {this.name,
      this.photos,
      this.thumbnailImage,
      this.featuredImage,
      this.flashDealImage,
      this.basePrice,
      this.baseDiscountedPrice,
      this.todaysDeal,
      this.featured,
      this.unit,
      this.discount,
      this.discountType,
      this.rating,
      this.sales,
      this.links})
      : super._();

  @override
  TodaysDealData rebuild(void Function(TodaysDealDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TodaysDealDataBuilder toBuilder() =>
      new TodaysDealDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TodaysDealData &&
        name == other.name &&
        photos == other.photos &&
        thumbnailImage == other.thumbnailImage &&
        featuredImage == other.featuredImage &&
        flashDealImage == other.flashDealImage &&
        basePrice == other.basePrice &&
        baseDiscountedPrice == other.baseDiscountedPrice &&
        todaysDeal == other.todaysDeal &&
        featured == other.featured &&
        unit == other.unit &&
        discount == other.discount &&
        discountType == other.discountType &&
        rating == other.rating &&
        sales == other.sales &&
        links == other.links;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(0,
                                                                name.hashCode),
                                                            photos.hashCode),
                                                        thumbnailImage
                                                            .hashCode),
                                                    featuredImage.hashCode),
                                                flashDealImage.hashCode),
                                            basePrice.hashCode),
                                        baseDiscountedPrice.hashCode),
                                    todaysDeal.hashCode),
                                featured.hashCode),
                            unit.hashCode),
                        discount.hashCode),
                    discountType.hashCode),
                rating.hashCode),
            sales.hashCode),
        links.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TodaysDealData')
          ..add('name', name)
          ..add('photos', photos)
          ..add('thumbnailImage', thumbnailImage)
          ..add('featuredImage', featuredImage)
          ..add('flashDealImage', flashDealImage)
          ..add('basePrice', basePrice)
          ..add('baseDiscountedPrice', baseDiscountedPrice)
          ..add('todaysDeal', todaysDeal)
          ..add('featured', featured)
          ..add('unit', unit)
          ..add('discount', discount)
          ..add('discountType', discountType)
          ..add('rating', rating)
          ..add('sales', sales)
          ..add('links', links))
        .toString();
  }
}

class TodaysDealDataBuilder
    implements Builder<TodaysDealData, TodaysDealDataBuilder> {
  _$TodaysDealData _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  ListBuilder<String> _photos;
  ListBuilder<String> get photos =>
      _$this._photos ??= new ListBuilder<String>();
  set photos(ListBuilder<String> photos) => _$this._photos = photos;

  String _thumbnailImage;
  String get thumbnailImage => _$this._thumbnailImage;
  set thumbnailImage(String thumbnailImage) =>
      _$this._thumbnailImage = thumbnailImage;

  String _featuredImage;
  String get featuredImage => _$this._featuredImage;
  set featuredImage(String featuredImage) =>
      _$this._featuredImage = featuredImage;

  String _flashDealImage;
  String get flashDealImage => _$this._flashDealImage;
  set flashDealImage(String flashDealImage) =>
      _$this._flashDealImage = flashDealImage;

  int _basePrice;
  int get basePrice => _$this._basePrice;
  set basePrice(int basePrice) => _$this._basePrice = basePrice;

  int _baseDiscountedPrice;
  int get baseDiscountedPrice => _$this._baseDiscountedPrice;
  set baseDiscountedPrice(int baseDiscountedPrice) =>
      _$this._baseDiscountedPrice = baseDiscountedPrice;

  int _todaysDeal;
  int get todaysDeal => _$this._todaysDeal;
  set todaysDeal(int todaysDeal) => _$this._todaysDeal = todaysDeal;

  int _featured;
  int get featured => _$this._featured;
  set featured(int featured) => _$this._featured = featured;

  String _unit;
  String get unit => _$this._unit;
  set unit(String unit) => _$this._unit = unit;

  int _discount;
  int get discount => _$this._discount;
  set discount(int discount) => _$this._discount = discount;

  String _discountType;
  String get discountType => _$this._discountType;
  set discountType(String discountType) => _$this._discountType = discountType;

  int _rating;
  int get rating => _$this._rating;
  set rating(int rating) => _$this._rating = rating;

  int _sales;
  int get sales => _$this._sales;
  set sales(int sales) => _$this._sales = sales;

  TodaysDealLinksBuilder _links;
  TodaysDealLinksBuilder get links =>
      _$this._links ??= new TodaysDealLinksBuilder();
  set links(TodaysDealLinksBuilder links) => _$this._links = links;

  TodaysDealDataBuilder();

  TodaysDealDataBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _photos = _$v.photos?.toBuilder();
      _thumbnailImage = _$v.thumbnailImage;
      _featuredImage = _$v.featuredImage;
      _flashDealImage = _$v.flashDealImage;
      _basePrice = _$v.basePrice;
      _baseDiscountedPrice = _$v.baseDiscountedPrice;
      _todaysDeal = _$v.todaysDeal;
      _featured = _$v.featured;
      _unit = _$v.unit;
      _discount = _$v.discount;
      _discountType = _$v.discountType;
      _rating = _$v.rating;
      _sales = _$v.sales;
      _links = _$v.links?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TodaysDealData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TodaysDealData;
  }

  @override
  void update(void Function(TodaysDealDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TodaysDealData build() {
    _$TodaysDealData _$result;
    try {
      _$result = _$v ??
          new _$TodaysDealData._(
              name: name,
              photos: _photos?.build(),
              thumbnailImage: thumbnailImage,
              featuredImage: featuredImage,
              flashDealImage: flashDealImage,
              basePrice: basePrice,
              baseDiscountedPrice: baseDiscountedPrice,
              todaysDeal: todaysDeal,
              featured: featured,
              unit: unit,
              discount: discount,
              discountType: discountType,
              rating: rating,
              sales: sales,
              links: _links?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'photos';
        _photos?.build();

        _$failedField = 'links';
        _links?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TodaysDealData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
