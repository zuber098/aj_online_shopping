// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductDetailsData> _$productDetailsDataSerializer =
    new _$ProductDetailsDataSerializer();

class _$ProductDetailsDataSerializer
    implements StructuredSerializer<ProductDetailsData> {
  @override
  final Iterable<Type> types = const [ProductDetailsData, _$ProductDetailsData];
  @override
  final String wireName = 'ProductDetailsData';

  @override
  Iterable<Object> serialize(Serializers serializers, ProductDetailsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.addedBy != null) {
      result
        ..add('added_by')
        ..add(serializers.serialize(object.addedBy,
            specifiedType: const FullType(String)));
    }
    if (object.user != null) {
      result
        ..add('user')
        ..add(serializers.serialize(object.user,
            specifiedType: const FullType(User)));
    }
    if (object.category != null) {
      result
        ..add('category')
        ..add(serializers.serialize(object.category,
            specifiedType: const FullType(CategoryModel)));
    }
    if (object.subCategory != null) {
      result
        ..add('sub_category')
        ..add(serializers.serialize(object.subCategory,
            specifiedType: const FullType(SubcategoryModel)));
    }
    if (object.brand != null) {
      result
        ..add('brand')
        ..add(serializers.serialize(object.brand,
            specifiedType: const FullType(BrandModel)));
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
    if (object.tags != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(object.tags,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.priceLower != null) {
      result
        ..add('price_lower')
        ..add(serializers.serialize(object.priceLower,
            specifiedType: const FullType(int)));
    }
    if (object.priceHigher != null) {
      result
        ..add('price_higher')
        ..add(serializers.serialize(object.priceHigher,
            specifiedType: const FullType(int)));
    }
    if (object.choiceOptions != null) {
      result
        ..add('choice_options')
        ..add(serializers.serialize(object.choiceOptions,
            specifiedType: const FullType(BuiltList,
                const [const FullType(ProductDetailsChoiseOption)])));
    }
    if (object.colors != null) {
      result
        ..add('colors')
        ..add(serializers.serialize(object.colors,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
    if (object.currentStock != null) {
      result
        ..add('current_stock')
        ..add(serializers.serialize(object.currentStock,
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
    if (object.tax != null) {
      result
        ..add('tax')
        ..add(serializers.serialize(object.tax,
            specifiedType: const FullType(int)));
    }
    if (object.taxType != null) {
      result
        ..add('tax_type')
        ..add(serializers.serialize(object.taxType,
            specifiedType: const FullType(String)));
    }
    if (object.shippingType != null) {
      result
        ..add('shipping_type')
        ..add(serializers.serialize(object.shippingType,
            specifiedType: const FullType(String)));
    }
    if (object.shippingCost != null) {
      result
        ..add('shipping_cost')
        ..add(serializers.serialize(object.shippingCost,
            specifiedType: const FullType(int)));
    }
    if (object.numberOfSales != null) {
      result
        ..add('number_of_sales')
        ..add(serializers.serialize(object.numberOfSales,
            specifiedType: const FullType(int)));
    }
    if (object.rating != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(object.rating,
            specifiedType: const FullType(int)));
    }
    if (object.ratingCount != null) {
      result
        ..add('rating_count')
        ..add(serializers.serialize(object.ratingCount,
            specifiedType: const FullType(int)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.links != null) {
      result
        ..add('links')
        ..add(serializers.serialize(object.links,
            specifiedType: const FullType(ProductDetailsLinks)));
    }
    return result;
  }

  @override
  ProductDetailsData deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductDetailsDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'added_by':
          result.addedBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(User)) as User);
          break;
        case 'category':
          result.category.replace(serializers.deserialize(value,
              specifiedType: const FullType(CategoryModel)) as CategoryModel);
          break;
        case 'sub_category':
          result.subCategory.replace(serializers.deserialize(value,
                  specifiedType: const FullType(SubcategoryModel))
              as SubcategoryModel);
          break;
        case 'brand':
          result.brand.replace(serializers.deserialize(value,
              specifiedType: const FullType(BrandModel)) as BrandModel);
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
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'price_lower':
          result.priceLower = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'price_higher':
          result.priceHigher = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'choice_options':
          result.choiceOptions.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ProductDetailsChoiseOption)
              ])) as BuiltList<Object>);
          break;
        case 'colors':
          result.colors.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'todays_deal':
          result.todaysDeal = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'featured':
          result.featured = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'current_stock':
          result.currentStock = serializers.deserialize(value,
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
        case 'tax':
          result.tax = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'tax_type':
          result.taxType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'shipping_type':
          result.shippingType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'shipping_cost':
          result.shippingCost = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'number_of_sales':
          result.numberOfSales = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'rating_count':
          result.ratingCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'links':
          result.links.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ProductDetailsLinks))
              as ProductDetailsLinks);
          break;
      }
    }

    return result.build();
  }
}

class _$ProductDetailsData extends ProductDetailsData {
  @override
  final int id;
  @override
  final String name;
  @override
  final String addedBy;
  @override
  final User user;
  @override
  final CategoryModel category;
  @override
  final SubcategoryModel subCategory;
  @override
  final BrandModel brand;
  @override
  final BuiltList<String> photos;
  @override
  final String thumbnailImage;
  @override
  final String featuredImage;
  @override
  final String flashDealImage;
  @override
  final BuiltList<String> tags;
  @override
  final int priceLower;
  @override
  final int priceHigher;
  @override
  final BuiltList<ProductDetailsChoiseOption> choiceOptions;
  @override
  final BuiltList<String> colors;
  @override
  final int todaysDeal;
  @override
  final int featured;
  @override
  final int currentStock;
  @override
  final String unit;
  @override
  final int discount;
  @override
  final String discountType;
  @override
  final int tax;
  @override
  final String taxType;
  @override
  final String shippingType;
  @override
  final int shippingCost;
  @override
  final int numberOfSales;
  @override
  final int rating;
  @override
  final int ratingCount;
  @override
  final String description;
  @override
  final ProductDetailsLinks links;

  factory _$ProductDetailsData(
          [void Function(ProductDetailsDataBuilder) updates]) =>
      (new ProductDetailsDataBuilder()..update(updates)).build();

  _$ProductDetailsData._(
      {this.id,
      this.name,
      this.addedBy,
      this.user,
      this.category,
      this.subCategory,
      this.brand,
      this.photos,
      this.thumbnailImage,
      this.featuredImage,
      this.flashDealImage,
      this.tags,
      this.priceLower,
      this.priceHigher,
      this.choiceOptions,
      this.colors,
      this.todaysDeal,
      this.featured,
      this.currentStock,
      this.unit,
      this.discount,
      this.discountType,
      this.tax,
      this.taxType,
      this.shippingType,
      this.shippingCost,
      this.numberOfSales,
      this.rating,
      this.ratingCount,
      this.description,
      this.links})
      : super._();

  @override
  ProductDetailsData rebuild(
          void Function(ProductDetailsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductDetailsDataBuilder toBuilder() =>
      new ProductDetailsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductDetailsData &&
        id == other.id &&
        name == other.name &&
        addedBy == other.addedBy &&
        user == other.user &&
        category == other.category &&
        subCategory == other.subCategory &&
        brand == other.brand &&
        photos == other.photos &&
        thumbnailImage == other.thumbnailImage &&
        featuredImage == other.featuredImage &&
        flashDealImage == other.flashDealImage &&
        tags == other.tags &&
        priceLower == other.priceLower &&
        priceHigher == other.priceHigher &&
        choiceOptions == other.choiceOptions &&
        colors == other.colors &&
        todaysDeal == other.todaysDeal &&
        featured == other.featured &&
        currentStock == other.currentStock &&
        unit == other.unit &&
        discount == other.discount &&
        discountType == other.discountType &&
        tax == other.tax &&
        taxType == other.taxType &&
        shippingType == other.shippingType &&
        shippingCost == other.shippingCost &&
        numberOfSales == other.numberOfSales &&
        rating == other.rating &&
        ratingCount == other.ratingCount &&
        description == other.description &&
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
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, id.hashCode), name.hashCode), addedBy.hashCode), user.hashCode), category.hashCode), subCategory.hashCode), brand.hashCode), photos.hashCode), thumbnailImage.hashCode), featuredImage.hashCode), flashDealImage.hashCode), tags.hashCode),
                                                                                priceLower.hashCode),
                                                                            priceHigher.hashCode),
                                                                        choiceOptions.hashCode),
                                                                    colors.hashCode),
                                                                todaysDeal.hashCode),
                                                            featured.hashCode),
                                                        currentStock.hashCode),
                                                    unit.hashCode),
                                                discount.hashCode),
                                            discountType.hashCode),
                                        tax.hashCode),
                                    taxType.hashCode),
                                shippingType.hashCode),
                            shippingCost.hashCode),
                        numberOfSales.hashCode),
                    rating.hashCode),
                ratingCount.hashCode),
            description.hashCode),
        links.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductDetailsData')
          ..add('id', id)
          ..add('name', name)
          ..add('addedBy', addedBy)
          ..add('user', user)
          ..add('category', category)
          ..add('subCategory', subCategory)
          ..add('brand', brand)
          ..add('photos', photos)
          ..add('thumbnailImage', thumbnailImage)
          ..add('featuredImage', featuredImage)
          ..add('flashDealImage', flashDealImage)
          ..add('tags', tags)
          ..add('priceLower', priceLower)
          ..add('priceHigher', priceHigher)
          ..add('choiceOptions', choiceOptions)
          ..add('colors', colors)
          ..add('todaysDeal', todaysDeal)
          ..add('featured', featured)
          ..add('currentStock', currentStock)
          ..add('unit', unit)
          ..add('discount', discount)
          ..add('discountType', discountType)
          ..add('tax', tax)
          ..add('taxType', taxType)
          ..add('shippingType', shippingType)
          ..add('shippingCost', shippingCost)
          ..add('numberOfSales', numberOfSales)
          ..add('rating', rating)
          ..add('ratingCount', ratingCount)
          ..add('description', description)
          ..add('links', links))
        .toString();
  }
}

class ProductDetailsDataBuilder
    implements Builder<ProductDetailsData, ProductDetailsDataBuilder> {
  _$ProductDetailsData _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _addedBy;
  String get addedBy => _$this._addedBy;
  set addedBy(String addedBy) => _$this._addedBy = addedBy;

  UserBuilder _user;
  UserBuilder get user => _$this._user ??= new UserBuilder();
  set user(UserBuilder user) => _$this._user = user;

  CategoryModelBuilder _category;
  CategoryModelBuilder get category =>
      _$this._category ??= new CategoryModelBuilder();
  set category(CategoryModelBuilder category) => _$this._category = category;

  SubcategoryModelBuilder _subCategory;
  SubcategoryModelBuilder get subCategory =>
      _$this._subCategory ??= new SubcategoryModelBuilder();
  set subCategory(SubcategoryModelBuilder subCategory) =>
      _$this._subCategory = subCategory;

  BrandModelBuilder _brand;
  BrandModelBuilder get brand => _$this._brand ??= new BrandModelBuilder();
  set brand(BrandModelBuilder brand) => _$this._brand = brand;

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

  ListBuilder<String> _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String> tags) => _$this._tags = tags;

  int _priceLower;
  int get priceLower => _$this._priceLower;
  set priceLower(int priceLower) => _$this._priceLower = priceLower;

  int _priceHigher;
  int get priceHigher => _$this._priceHigher;
  set priceHigher(int priceHigher) => _$this._priceHigher = priceHigher;

  ListBuilder<ProductDetailsChoiseOption> _choiceOptions;
  ListBuilder<ProductDetailsChoiseOption> get choiceOptions =>
      _$this._choiceOptions ??= new ListBuilder<ProductDetailsChoiseOption>();
  set choiceOptions(ListBuilder<ProductDetailsChoiseOption> choiceOptions) =>
      _$this._choiceOptions = choiceOptions;

  ListBuilder<String> _colors;
  ListBuilder<String> get colors =>
      _$this._colors ??= new ListBuilder<String>();
  set colors(ListBuilder<String> colors) => _$this._colors = colors;

  int _todaysDeal;
  int get todaysDeal => _$this._todaysDeal;
  set todaysDeal(int todaysDeal) => _$this._todaysDeal = todaysDeal;

  int _featured;
  int get featured => _$this._featured;
  set featured(int featured) => _$this._featured = featured;

  int _currentStock;
  int get currentStock => _$this._currentStock;
  set currentStock(int currentStock) => _$this._currentStock = currentStock;

  String _unit;
  String get unit => _$this._unit;
  set unit(String unit) => _$this._unit = unit;

  int _discount;
  int get discount => _$this._discount;
  set discount(int discount) => _$this._discount = discount;

  String _discountType;
  String get discountType => _$this._discountType;
  set discountType(String discountType) => _$this._discountType = discountType;

  int _tax;
  int get tax => _$this._tax;
  set tax(int tax) => _$this._tax = tax;

  String _taxType;
  String get taxType => _$this._taxType;
  set taxType(String taxType) => _$this._taxType = taxType;

  String _shippingType;
  String get shippingType => _$this._shippingType;
  set shippingType(String shippingType) => _$this._shippingType = shippingType;

  int _shippingCost;
  int get shippingCost => _$this._shippingCost;
  set shippingCost(int shippingCost) => _$this._shippingCost = shippingCost;

  int _numberOfSales;
  int get numberOfSales => _$this._numberOfSales;
  set numberOfSales(int numberOfSales) => _$this._numberOfSales = numberOfSales;

  int _rating;
  int get rating => _$this._rating;
  set rating(int rating) => _$this._rating = rating;

  int _ratingCount;
  int get ratingCount => _$this._ratingCount;
  set ratingCount(int ratingCount) => _$this._ratingCount = ratingCount;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  ProductDetailsLinksBuilder _links;
  ProductDetailsLinksBuilder get links =>
      _$this._links ??= new ProductDetailsLinksBuilder();
  set links(ProductDetailsLinksBuilder links) => _$this._links = links;

  ProductDetailsDataBuilder();

  ProductDetailsDataBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _addedBy = _$v.addedBy;
      _user = _$v.user?.toBuilder();
      _category = _$v.category?.toBuilder();
      _subCategory = _$v.subCategory?.toBuilder();
      _brand = _$v.brand?.toBuilder();
      _photos = _$v.photos?.toBuilder();
      _thumbnailImage = _$v.thumbnailImage;
      _featuredImage = _$v.featuredImage;
      _flashDealImage = _$v.flashDealImage;
      _tags = _$v.tags?.toBuilder();
      _priceLower = _$v.priceLower;
      _priceHigher = _$v.priceHigher;
      _choiceOptions = _$v.choiceOptions?.toBuilder();
      _colors = _$v.colors?.toBuilder();
      _todaysDeal = _$v.todaysDeal;
      _featured = _$v.featured;
      _currentStock = _$v.currentStock;
      _unit = _$v.unit;
      _discount = _$v.discount;
      _discountType = _$v.discountType;
      _tax = _$v.tax;
      _taxType = _$v.taxType;
      _shippingType = _$v.shippingType;
      _shippingCost = _$v.shippingCost;
      _numberOfSales = _$v.numberOfSales;
      _rating = _$v.rating;
      _ratingCount = _$v.ratingCount;
      _description = _$v.description;
      _links = _$v.links?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductDetailsData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProductDetailsData;
  }

  @override
  void update(void Function(ProductDetailsDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductDetailsData build() {
    _$ProductDetailsData _$result;
    try {
      _$result = _$v ??
          new _$ProductDetailsData._(
              id: id,
              name: name,
              addedBy: addedBy,
              user: _user?.build(),
              category: _category?.build(),
              subCategory: _subCategory?.build(),
              brand: _brand?.build(),
              photos: _photos?.build(),
              thumbnailImage: thumbnailImage,
              featuredImage: featuredImage,
              flashDealImage: flashDealImage,
              tags: _tags?.build(),
              priceLower: priceLower,
              priceHigher: priceHigher,
              choiceOptions: _choiceOptions?.build(),
              colors: _colors?.build(),
              todaysDeal: todaysDeal,
              featured: featured,
              currentStock: currentStock,
              unit: unit,
              discount: discount,
              discountType: discountType,
              tax: tax,
              taxType: taxType,
              shippingType: shippingType,
              shippingCost: shippingCost,
              numberOfSales: numberOfSales,
              rating: rating,
              ratingCount: ratingCount,
              description: description,
              links: _links?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'category';
        _category?.build();
        _$failedField = 'subCategory';
        _subCategory?.build();
        _$failedField = 'brand';
        _brand?.build();
        _$failedField = 'photos';
        _photos?.build();

        _$failedField = 'tags';
        _tags?.build();

        _$failedField = 'choiceOptions';
        _choiceOptions?.build();
        _$failedField = 'colors';
        _colors?.build();

        _$failedField = 'links';
        _links?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProductDetailsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
