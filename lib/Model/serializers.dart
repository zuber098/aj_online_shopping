library serializers;

import 'package:ajonlineshope/Model/all_category_data.dart';
import 'package:ajonlineshope/Model/all_category_links.dart';
import 'package:ajonlineshope/Model/all_category_response_model.dart';
import 'package:ajonlineshope/Model/best_seller_links.dart';
import 'package:ajonlineshope/Model/best_seller_response.dart';
import 'package:ajonlineshope/Model/best_seller_data.dart';
import 'package:ajonlineshope/Model/brand_links.dart';
import 'package:ajonlineshope/Model/brand_model.dart';
import 'package:ajonlineshope/Model/category_links.dart';
import 'package:ajonlineshope/Model/category_model.dart';
import 'package:ajonlineshope/Model/category_response_data.dart';
import 'package:ajonlineshope/Model/category_response_data_links.dart';
import 'package:ajonlineshope/Model/category_response_links.dart';
import 'package:ajonlineshope/Model/category_response_meta.dart';
import 'package:ajonlineshope/Model/category_response_model.dart';
import 'package:ajonlineshope/Model/product_details_choise_option.dart';
import 'package:ajonlineshope/Model/product_details_data.dart';
import 'package:ajonlineshope/Model/product_details_links.dart';
import 'package:ajonlineshope/Model/product_details_response_model.dart';
import 'package:ajonlineshope/Model/related_product_data.dart';
import 'package:ajonlineshope/Model/related_product_links.dart';
import 'package:ajonlineshope/Model/related_product_response_model.dart';
import 'package:ajonlineshope/Model/slider_data.dart';
import 'package:ajonlineshope/Model/login_response_model.dart';
import 'package:ajonlineshope/Model/slider_response_model.dart';
import 'package:ajonlineshope/Model/subcategory_links.dart';
import 'package:ajonlineshope/Model/subcategory_model.dart';
import 'package:ajonlineshope/Model/todays_deal_data.dart';
import 'package:ajonlineshope/Model/todays_deal_links.dart';
import 'package:ajonlineshope/Model/todays_deal_response_model.dart';
import 'package:ajonlineshope/Model/user.dart';
import 'package:ajonlineshope/Model/user_response_model.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'package:built_collection/built_collection.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  LoginResponseModel,
  User,
  SliderResponseModel,
  SliderData,
  BestSellerData,
  BestSellerLinks,
  BestSellerResponse,
  TodaysDealResponseModel,
  TodaysDealData,
  TodaysDealLinks,
  AllCategoryResponseModel,
  AllCategoryData,
  AllCategoryLinks,
  ProductDetailsResponseModel,
  ProductDetailsData,
  ProductDetailsLinks,
  ProductDetailsChoiseOption,
  CategoryModel,
  CategoryLinks,
  SubcategoryModel,
  SubcategoryLinks,
  BrandModel,
  BrandLinks,
  RelatedProductResponseModel,
  RelatedProductData,
  RelatedProductLinks,
  CategoryResponseModel,
  CategoryResponseMeta,
  CategoryResponseLinks,
  CategoryResponseData,
  CategoryResponseDataLinks,
  UserResponseModel,
])
final Serializers serializers = (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

