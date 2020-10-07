import 'dart:async';

import 'package:ajonlineshope/Api/MainApi.dart';
import 'package:ajonlineshope/Library/Language_Library/lib/easy_localization_delegate.dart';
import 'package:ajonlineshope/Library/Language_Library/lib/easy_localization_provider.dart';
import 'package:ajonlineshope/ListItem/HomeGridItemRecomended.dart';
import 'package:ajonlineshope/Model/best_seller_response.dart';
import 'package:ajonlineshope/Model/category_response_model.dart';
import 'package:ajonlineshope/Model/product_details_response_model.dart';
import 'package:ajonlineshope/UI/HomeUIComponent/DetailProduct.dart';
import 'package:ajonlineshope/Utils/CommanStrings.dart';
import 'package:dio/dio.dart';
import 'package:shimmer/shimmer.dart';
import 'package:ajonlineshope/Library/carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:ajonlineshope/ListItem/CategoryItem.dart';
import 'package:ajonlineshope/ListItem/CategoryItem.dart';
import 'package:ajonlineshope/ListItem/CategoryItem.dart';
import 'package:ajonlineshope/UI/HomeUIComponent/PromotionDetail.dart';
import 'package:ajonlineshope/UI/HomeUIComponent/Search.dart';

class categoryDetail extends StatefulWidget {
  String categoryLink,categoryName;
  categoryDetail(this.categoryLink,this.categoryName);
  @override
  _categoryDetailState createState() => _categoryDetailState();
}

/// if user click icon in category layout navigate to categoryDetail Layout
class _categoryDetailState extends State<categoryDetail> {
  CategoryResponseModel categoryResponseModel;

  ///
  /// Get image data dummy from firebase server
  ///
  var imageNetwork = NetworkImage(
      "https://firebasestorage.googleapis.com/v0/b/beauty-look.appspot.com/o/Screenshot_20181005-213916.png?alt=media&token=f952caf0-2de7-417c-9c9e-3b6dcea953f4");

  ///
  /// check the condition is right or wrong for image loaded or no
  ///
  bool loadImage = true;

  /// custom text variable is make it easy a custom textStyle black font
  static var _customTextStyleBlack = TextStyle(
      fontFamily: "Gotik",
      color: Colors.black,
      fontWeight: FontWeight.w700,
      fontSize: 15.0);

  /// Custom text blue in variable
  static var _customTextStyleBlue = TextStyle(
      fontFamily: "Gotik",
      color: Color(0xFF6991C7),
      fontWeight: FontWeight.w700,
      fontSize: 15.0);

  ///
  /// SetState after imageNetwork loaded to change list card
  ///
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      setState(() {
        loadImage = false;
      });
    });

    loadCategoryData(widget.categoryLink);
    super.initState();
  }

  /// All Widget Component layout
  @override
  Widget build(BuildContext context) {
    var Grid = SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
              child: Text(
                /*AppLocalizations.of(context).tr('recomended')*/
                widget.categoryName,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 17.0,
                ),
              ),
            ),

            /// To set GridView item
            categoryResponseModel != null
                ? GridView.count(
                    shrinkWrap: true,
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 17.0,
                    childAspectRatio: 0.545,
                    crossAxisCount: 2,
                    primary: false,
                    children: List.generate(
                      categoryResponseModel.data.length,
                      (index) => ItemGrid(categoryResponseModel, index),
                    ))
                : _loadingImageAnimation(context),
          ],
        ),
      ),
    );

    /// imageSlider in header layout category detail
    var _imageSlider = Padding(
      padding: const EdgeInsets.only(
          top: 0.0, left: 10.0, right: 10.0, bottom: 35.0),
      child: Container(
        height: 180.0,
        child: new Carousel(
          boxFit: BoxFit.cover,
          dotColor: Colors.transparent,
          dotSize: 5.5,
          dotSpacing: 16.0,
          dotBgColor: Colors.transparent,
          showIndicator: false,
          overlayShadow: false,
          overlayShadowColors: Colors.white.withOpacity(0.9),
          overlayShadowSize: 0.9,
          images: [
            AssetImage("assets/img/bannerMan1.png"),
            AssetImage("assets/img/bannerMan2.png"),
            AssetImage("assets/img/bannerMan3.png"),
            AssetImage("assets/img/bannerMan4.png"),
          ],
        ),
      ),
    );

    /// Variable Category (Sub Category)
    var _subCategory = Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  AppLocalizations.of(context).tr('subCategory'),
                  style: _customTextStyleBlack,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (_, __, ___) => new promoDetail()));
                  },
                  child: Text(AppLocalizations.of(context).tr('seeMore'),
                      style:
                          _customTextStyleBlue.copyWith(color: Colors.black26)),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Container(
              color: Colors.white,
              margin: EdgeInsets.only(right: 10.0, top: 5.0),
              height: 110.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(left: 20.0)),
                  KeywordItem(
                    title: AppLocalizations.of(context).tr('categoryTitle1'),
                    title2: AppLocalizations.of(context).tr('categoryTitle2'),
                  ),
                  Padding(padding: EdgeInsets.only(left: 15.0)),
                  KeywordItem(
                    title: AppLocalizations.of(context).tr('categoryTitle3'),
                    title2: AppLocalizations.of(context).tr('categoryTitle4'),
                  ),
                  Padding(padding: EdgeInsets.only(left: 15.0)),
                  KeywordItem(
                    title: AppLocalizations.of(context).tr('categoryTitle5'),
                    title2: AppLocalizations.of(context).tr('categoryTitle6'),
                  ),
                  Padding(padding: EdgeInsets.only(left: 15.0)),
                  KeywordItem(
                    title: AppLocalizations.of(context).tr('categoryTitle7'),
                    title2: AppLocalizations.of(context).tr('categoryTitle8'),
                  ),
                  Padding(padding: EdgeInsets.only(right: 20.0)),
                ],
              ),
            ),
          )
        ],
      ),
    );

    /// Variable item Discount with Card
    var _itemDiscount = Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  AppLocalizations.of(context).tr('itemDiscount'),
                  style: _customTextStyleBlack,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (_, __, ___) => new promoDetail()));
                  },
                  child: Text(AppLocalizations.of(context).tr('seeMore'),
                      style: _customTextStyleBlue),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(right: 10.0),
              height: 300.0,

              ///
              ///
              /// check the condition if image data from server firebase loaded or no
              /// if image true (image still downloading from server)
              /// Card to set card loading animation


              /*child: loadImage
                  ? _loadingImageAnimationDiscount(context)
                  : ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) =>
                          discountItem(itemDiscount[index]),
                      itemCount: itemDiscount.length,
                    ),*/


              ),
          )
        ],
      ),
    );

    /// Variable item Popular with Card
    var _itemPopular = Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    AppLocalizations.of(context).tr('itemPopular'),
                    style: _customTextStyleBlack,
                  ),
                  InkWell(
                    onTap: null,
                    child: Text(AppLocalizations.of(context).tr('seeMore'),
                        style: _customTextStyleBlue),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(right: 10.0),
                height: 300.0,

                ///
                ///
                /// check the condition if image data from server firebase loaded or no
                /// if image true (image still downloading from server)
                /// Card to set card loading animation
                ///
                ///
                child: loadImage
                    ? _loadingImageAnimation(context)
                    : ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) =>
                            Item(itemPopularData[index]),
                        itemCount: itemDiscount.length,
                      ),
              ),
            )
          ],
        ),
      ),
    );

    /// Variable New Items with Card
    var _itemNew = Padding(
      padding: const EdgeInsets.only(top: 30.0, bottom: 15.0),
      child: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 20.0, left: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    AppLocalizations.of(context).tr('newItem'),
                    style: _customTextStyleBlack,
                  ),
                  InkWell(
                    onTap: null,
                    child: Text(AppLocalizations.of(context).tr('seeMore'),
                        style: _customTextStyleBlue),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(right: 10.0, bottom: 15.0),
                height: 300.0,

                ///
                ///
                /// check the condition if image data from server firebase loaded or no
                /// if image true (image still downloading from server)
                /// Card to set card loading animation
                ///
                ///
                child: loadImage
                    ? _loadingImageAnimation(context)
                    : ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) =>
                            Item(newItems[index]),
                        itemCount: itemDiscount.length,
                      ),
              ),
            )
          ],
        ),
      ),
    );

    var data = EasyLocalizationProvider.of(context).data;
    return EasyLocalizationProvider(
      data: data,
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (_, __, ___) => new searchAppbar()));
              },
              icon: Icon(Icons.search, color: Color(0xFF6991C7)),
            ),
          ],
          centerTitle: true,
          title: Text(widget.categoryName
            /*AppLocalizations.of(context).tr('man')*/,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16.0,
                color: Colors.black54,
                fontFamily: "Gotik"),
          ),
          iconTheme: IconThemeData(
            color: Color(0xFF6991C7),
          ),
          elevation: 0.0,
        ),

        /// For call a variable include to body
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                _imageSlider,
                _subCategory,
                Grid
                /*,
                _itemDiscount,
                _itemPopular,
                _itemNew*/
              ],
            ),
          ),
        ),
      ),
    );
  }

  void loadCategoryData(String categoryLink) async{
    try{
      MainApi mainApi = new MainApi(context);
      Response response = await mainApi.getCategoryData(context, categoryLink);
      if(response!=null)
        {
          setState(() {
            categoryResponseModel = CategoryResponseModel.fromJson(response.toString());
          });
        }
    }catch(e)
    {
      print(e);
    }
  }
}

/// Class Component a Item Discount Card
class discountItem extends StatelessWidget {
  categoryItem item;

  discountItem(this.item);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 20.0, left: 10.0, bottom: 10.0, right: 0.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF656565).withOpacity(0.15),
                  blurRadius: 2.0,
                  spreadRadius: 1.0,
//           offset: Offset(4.0, 10.0)
                )
              ]),
          child: Wrap(
            children: <Widget>[
              Container(
                width: 160.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          height: 185.0,
                          width: 160.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(7.0),
                                  topRight: Radius.circular(7.0)),
                              image: DecorationImage(
                                  image: AssetImage(item.image),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          height: 25.5,
                          width: 55.0,
                          decoration: BoxDecoration(
                              color: Color(0xFFD7124A),
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(20.0),
                                  topLeft: Radius.circular(5.0))),
                          child: Center(
                              child: Text(
                            "10%",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          )),
                        )
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(top: 7.0)),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Text(
                        item.title,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            letterSpacing: 0.5,
                            color: Colors.black54,
                            fontFamily: "Sans",
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 1.0)),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Text(
                        item.Salary,
                        style: TextStyle(
                            fontFamily: "Sans",
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 5.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                item.Rating,
                                style: TextStyle(
                                    fontFamily: "Sans",
                                    color: Colors.black26,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.0),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 14.0,
                              )
                            ],
                          ),
                          Text(
                            item.sale,
                            style: TextStyle(
                                fontFamily: "Sans",
                                color: Colors.black26,
                                fontWeight: FontWeight.w500,
                                fontSize: 12.0),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Class Component Card in Category Detail
class Item extends StatelessWidget {
  categoryItem item;

  Item(this.item);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 20.0, left: 10.0, bottom: 10.0, right: 0.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF656565).withOpacity(0.15),
                  blurRadius: 2.0,
                  spreadRadius: 1.0,
//           offset: Offset(4.0, 10.0)
                )
              ]),
          child: Wrap(
            children: <Widget>[
              Container(
                width: 160.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      height: 185.0,
                      width: 160.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(7.0),
                              topRight: Radius.circular(7.0)),
                          image: DecorationImage(
                              image: AssetImage(item.image),
                              fit: BoxFit.cover)),
                    ),
                    Padding(padding: EdgeInsets.only(top: 7.0)),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Text(
                        item.title,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            letterSpacing: 0.5,
                            color: Colors.black54,
                            fontFamily: "Sans",
                            fontWeight: FontWeight.w500,
                            fontSize: 13.0),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 1.0)),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Text(
                        item.Salary,
                        style: TextStyle(
                            fontFamily: "Sans",
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 5.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                item.Rating,
                                style: TextStyle(
                                    fontFamily: "Sans",
                                    color: Colors.black26,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.0),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 14.0,
                              )
                            ],
                          ),
                          Text(
                            item.sale,
                            style: TextStyle(
                                fontFamily: "Sans",
                                color: Colors.black26,
                                fontWeight: FontWeight.w500,
                                fontSize: 12.0),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

///
///
///
/// Loading Item Card Animation Constructor
///
///
///
class loadingMenuItemDiscountCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 20.0, left: 10.0, bottom: 10.0, right: 0.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF656565).withOpacity(0.15),
                  blurRadius: 2.0,
                  spreadRadius: 1.0,
//           offset: Offset(4.0, 10.0)
                )
              ]),
          child: Wrap(
            children: <Widget>[
              Shimmer.fromColors(
                baseColor: Colors.black38,
                highlightColor: Colors.white,
                child: Container(
                  width: 160.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            height: 185.0,
                            width: 160.0,
                            color: Colors.black12,
                          ),
                          Container(
                            height: 25.5,
                            width: 65.0,
                            decoration: BoxDecoration(
                                color: Color(0xFFD7124A),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20.0),
                                    topLeft: Radius.circular(5.0))),
                          )
                        ],
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 5.0, top: 12.0),
                          child: Container(
                            height: 9.5,
                            width: 130.0,
                            color: Colors.black12,
                          )),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 5.0, top: 10.0),
                          child: Container(
                            height: 9.5,
                            width: 80.0,
                            color: Colors.black12,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 15.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  "",
                                  style: TextStyle(
                                      fontFamily: "Sans",
                                      color: Colors.black26,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.0),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 14.0,
                                )
                              ],
                            ),
                            Container(
                              height: 8.0,
                              width: 30.0,
                              color: Colors.black12,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

///
///
///
/// Loading Item Card Animation Constructor
///
///
///
class loadingMenuItemCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 20.0, left: 10.0, bottom: 10.0, right: 0.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF656565).withOpacity(0.15),
                  blurRadius: 2.0,
                  spreadRadius: 1.0,
//           offset: Offset(4.0, 10.0)
                )
              ]),
          child: Wrap(
            children: <Widget>[
              Shimmer.fromColors(
                baseColor: Colors.black38,
                highlightColor: Colors.white,
                child: Container(
                  width: 160.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        height: 185.0,
                        width: 160.0,
                        color: Colors.black12,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 5.0, top: 12.0),
                          child: Container(
                            height: 9.5,
                            width: 130.0,
                            color: Colors.black12,
                          )),
                      Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, right: 5.0, top: 10.0),
                          child: Container(
                            height: 9.5,
                            width: 80.0,
                            color: Colors.black12,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 15.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  "",
                                  style: TextStyle(
                                      fontFamily: "Sans",
                                      color: Colors.black26,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.0),
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 14.0,
                                )
                              ],
                            ),
                            Container(
                              height: 8.0,
                              width: 30.0,
                              color: Colors.black12,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemGrid extends StatelessWidget {
  /// Get data from HomeGridItem.....dart class
//  GridItem gridItem;
  CategoryResponseModel categoryResponseModel;
  int index;

  ItemGrid(this.categoryResponseModel, this.index);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return InkWell(
      onTap: () {
        Navigator.of(context).push(PageRouteBuilder(
            pageBuilder: (_, __, ___) => new detailProduk(
                categoryResponseModel.data[index].links.details),
            transitionDuration: Duration(milliseconds: 900),

            /// Set animation Opacity in route to detailProduk layout
            transitionsBuilder:
                (_, Animation<double> animation, __, Widget child) {
              return Opacity(
                opacity: animation.value,
                child: child,
              );
            }));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF656565).withOpacity(0.15),
                blurRadius: 4.0,
                spreadRadius: 1.0,
//           offset: Offset(4.0, 10.0)
              )
            ]),
        child: Wrap(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                /// Set Animation image to detailProduk layout
                Hero(
                  tag: "hero-grid-${categoryResponseModel.data[index].name}",
                  child: Material(
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(PageRouteBuilder(
                            opaque: false,
                            pageBuilder: (BuildContext context, _, __) {
                              return new Material(
                                color: Colors.black54,
                                child: Container(
                                  padding: EdgeInsets.all(30.0),
                                  child: InkWell(
                                    child: Hero(
                                        tag:
                                            "hero-grid-${categoryResponseModel.data[index].name}",
                                        child: Image.network(
                                          ASSET_URL +
                                              categoryResponseModel
                                                  .data[index].thumbnailImage,
//                                          gridItem.img,
                                          width: 300.0,
                                          height: 300.0,
                                          alignment: Alignment.center,
                                          fit: BoxFit.contain,
                                        )),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                              );
                            },
                            transitionDuration: Duration(milliseconds: 500)));
                      },
                      child: Container(
                        height: mediaQueryData.size.height / 3.3,
                        width: 200.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(7.0),
                                topRight: Radius.circular(7.0)),
                            image: DecorationImage(
                                image: NetworkImage(
                                  ASSET_URL +
                                      categoryResponseModel
                                          .data[index].thumbnailImage,
                                ),
//                                AssetImage(gridItem.img),
                                fit: BoxFit.contain)),
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 7.0)),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Text(
//                    gridItem.title,
                    categoryResponseModel.data[index].name,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        letterSpacing: 0.5,
                        color: Colors.black54,
                        fontFamily: "Sans",
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 1.0)),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Text(
//                    gridItem.price,
                    "\$ ${categoryResponseModel.data[index].basePrice}",
                    style: TextStyle(
                        fontFamily: "Sans",
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, right: 15.0, top: 5.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            "${categoryResponseModel.data[index].rating}",
                            style: TextStyle(
                                fontFamily: "Sans",
                                color: Colors.black26,
                                fontWeight: FontWeight.w500,
                                fontSize: 12.0),
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 14.0,
                          )
                        ],
                      ),
                      Text(
                        "${categoryResponseModel.data[index].sales} Sold",
                        style: TextStyle(
                            fontFamily: "Sans",
                            color: Colors.black26,
                            fontWeight: FontWeight.w500,
                            fontSize: 12.0),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

///
///
/// Calling imageLoading animation for set a grid layout
///
///

/*Widget _loadingImageAnimation(BuildContext context) {
  return ListView.builder(
    scrollDirection: Axis.horizontal,
    itemBuilder: (BuildContext context, int index) => loadingMenuItemCard(),
    itemCount: itemDiscount.length,
  );
}*/

Widget _loadingImageAnimation(BuildContext context) {
  MediaQueryData mediaQueryData = MediaQuery.of(context);
  return GridView.count(
    crossAxisCount: 2,
    shrinkWrap: true,
    childAspectRatio: mediaQueryData.size.height / 1300,
    crossAxisSpacing: 0.0,
    mainAxisSpacing: 0.0,
    primary: false,
    children: List.generate(
      /// Get data in flashSaleItem.dart (ListItem folder)
      4,
          (index) => loadingItemGrid(gridItemArray[index]),
    ),
  );
}
///
///
/// Calling imageLoading animation for set a grid layout
///
///
Widget _loadingImageAnimationDiscount(BuildContext context) {
  return ListView.builder(
    scrollDirection: Axis.horizontal,
    itemBuilder: (BuildContext context, int index) =>
        loadingMenuItemDiscountCard(),
    itemCount: itemDiscount.length,
  );
}

class loadingItemGrid extends StatelessWidget {
  @override
  GridItem itemSale;

  loadingItemGrid(this.itemSale);

  final color = Colors.black38;

  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.black12.withOpacity(0.1),
                    spreadRadius: 0.2,
                    blurRadius: 0.5)
              ]),
              child: Shimmer.fromColors(
                baseColor: color,
                highlightColor: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 140.0,
                      width: mediaQueryData.size.width / 2.1,
                      color: Colors.black12,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, top: 10.0),
                      child: Container(
                        height: 15.0,
                        width: mediaQueryData.size.width / 2.6,
                        color: Colors.black12,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, top: 8.0),
                      child: Container(
                        height: 10.0,
                        width: mediaQueryData.size.width / 4.1,
                        color: Colors.black12,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0, top: 10.0),
                      child: Container(
                        height: 8.0,
                        width: mediaQueryData.size.width / 6.0,
                        color: Colors.black12,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            size: 11.0,
                            color: Colors.black12,
                          ),
                          Icon(
                            Icons.star,
                            size: 11.0,
                            color: Colors.black12,
                          ),
                          Icon(
                            Icons.star,
                            size: 11.0,
                            color: Colors.black12,
                          ),
                          Icon(
                            Icons.star,
                            size: 11.0,
                            color: Colors.black12,
                          ),
                          Icon(
                            Icons.star,
                            size: 11.0,
                            color: Colors.black12,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            size: 13.0,
                            color: Colors.black38,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Container(
                              height: 6.0,
                              width: mediaQueryData.size.width / 5.5,
                              color: Colors.black12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 24.0, left: 10.0, bottom: 15.0),
                      child: Container(
                        height: 7.0,
                        width: mediaQueryData.size.width / 2.5,
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius:
                            BorderRadius.all(Radius.circular(4.0)),
                            shape: BoxShape.rectangle),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}

