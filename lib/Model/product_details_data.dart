import 'dart:convert';

import 'package:ajonlineshope/Model/brand_model.dart';
import 'package:ajonlineshope/Model/category_model.dart';
import 'package:ajonlineshope/Model/product_details_choise_option.dart';
import 'package:ajonlineshope/Model/product_details_links.dart';
import 'package:ajonlineshope/Model/serializers.dart';
import 'package:ajonlineshope/Model/subcategory_model.dart';
import 'package:ajonlineshope/Model/user.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_details_data.g.dart';

abstract class ProductDetailsData
    implements Built<ProductDetailsData, ProductDetailsDataBuilder> {
  ProductDetailsData._();

  factory ProductDetailsData([updates(ProductDetailsDataBuilder b)]) =
      _$ProductDetailsData;

  @nullable
  @BuiltValueField(wireName: 'id')
  int get id;

  @nullable
  @BuiltValueField(wireName: 'name')
  String get name;

  @nullable
  @BuiltValueField(wireName: 'added_by')
  String get addedBy;

  @nullable
  @BuiltValueField(wireName: 'user')
  User get user;

  @nullable
  @BuiltValueField(wireName: 'category')
  CategoryModel get category;

  @nullable
  @BuiltValueField(wireName: 'sub_category')
  SubcategoryModel get subCategory;

  @nullable
  @BuiltValueField(wireName: 'brand')
  BrandModel get brand;

  @nullable
  @BuiltValueField(wireName: 'photos')
  BuiltList<String> get photos;

  @nullable
  @BuiltValueField(wireName: 'thumbnail_image')
  String get thumbnailImage;

  @nullable
  @BuiltValueField(wireName: 'featured_image')
  String get featuredImage;

  @nullable
  @BuiltValueField(wireName: 'flash_deal_image')
  String get flashDealImage;

  @nullable
  @BuiltValueField(wireName: 'tags')
  BuiltList<String> get tags;

  @nullable
  @BuiltValueField(wireName: 'price_lower')
  int get priceLower;

  @nullable
  @BuiltValueField(wireName: 'price_higher')
  int get priceHigher;

  @nullable
  @BuiltValueField(wireName: 'choice_options')
  BuiltList<ProductDetailsChoiseOption> get choiceOptions;

  @nullable
  @BuiltValueField(wireName: 'colors')
  BuiltList<String> get colors;

  @nullable
  @BuiltValueField(wireName: 'todays_deal')
  int get todaysDeal;

  @nullable
  @BuiltValueField(wireName: 'featured')
  int get featured;

  @nullable
  @BuiltValueField(wireName: 'current_stock')
  int get currentStock;

  @nullable
  @BuiltValueField(wireName: 'unit')
  String get unit;

  @nullable
  @BuiltValueField(wireName: 'discount')
  int get discount;

  @nullable
  @BuiltValueField(wireName: 'discount_type')
  String get discountType;

  @nullable
  @BuiltValueField(wireName: 'tax')
  int get tax;

  @nullable
  @BuiltValueField(wireName: 'tax_type')
  String get taxType;

  @nullable
  @BuiltValueField(wireName: 'shipping_type')
  String get shippingType;

  @nullable
  @BuiltValueField(wireName: 'shipping_cost')
  int get shippingCost;

  @nullable
  @BuiltValueField(wireName: 'number_of_sales')
  int get numberOfSales;

  @nullable
  @BuiltValueField(wireName: 'rating')
  int get rating;

  @nullable
  @BuiltValueField(wireName: 'rating_count')
  int get ratingCount;

  @nullable
  @BuiltValueField(wireName: 'description')
  String get description;

  @nullable
  @BuiltValueField(wireName: 'links')
  ProductDetailsLinks get links;

  String toJson() {
    return json
        .encode(serializers.serializeWith(ProductDetailsData.serializer, this));
  }

  static ProductDetailsData fromJson(String jsonString) {
    return serializers.deserializeWith(
        ProductDetailsData.serializer, json.decode(jsonString));
  }

  static Serializer<ProductDetailsData> get serializer =>
      _$productDetailsDataSerializer;
}
