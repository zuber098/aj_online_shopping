import 'package:ajonlineshope/Api/MainApi.dart';
import 'package:ajonlineshope/Library/Language_Library/lib/easy_localization_delegate.dart';
import 'package:ajonlineshope/Library/Language_Library/lib/easy_localization_provider.dart';
import 'package:ajonlineshope/Library/carousel_pro/carousel_pro.dart';
import 'package:ajonlineshope/Model/all_category_response_model.dart';
import 'package:ajonlineshope/Model/best_seller_response.dart';
import 'package:ajonlineshope/Model/slider_response_model.dart';
import 'package:ajonlineshope/Model/todays_deal_response_model.dart';
import 'package:ajonlineshope/Utils/CommanStrings.dart';
import 'package:ajonlineshope/Widget/CustomLoader.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ajonlineshope/Library/countdown_timer/countDownTimer.dart';
import 'package:ajonlineshope/ListItem/HomeGridItemRecomended.dart';
import 'package:ajonlineshope/UI/HomeUIComponent/AppbarGradient.dart';
import 'package:ajonlineshope/UI/HomeUIComponent/CategoryDetail.dart';
import 'package:ajonlineshope/UI/HomeUIComponent/DetailProduct.dart';
import 'package:ajonlineshope/UI/HomeUIComponent/FlashSale.dart';
import 'package:ajonlineshope/UI/HomeUIComponent/MenuDetail.dart';
import 'package:ajonlineshope/UI/HomeUIComponent/PromotionDetail.dart';
import 'package:shimmer/shimmer.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

/// Component all widget in home
class _MenuState extends State<Menu> with TickerProviderStateMixin {
  /// Declare class GridItem from HomeGridItemReoomended.dart in folder ListItem
  GridItem gridItem;

  bool isStarted = false;
  SliderResponseModel sliderResponseModel;
  TodaysDealResponseModel todaysDealResponseModel;
  BestSellerResponse bestSellerResponse;
  AllCategoryResponseModel allCategoryResponseModel;
  List<NetworkImage> sliderImages = List<NetworkImage>();

  @override
  void initState() {
    super.initState();
    loadSlider();
    loadTodaysDeal();
    loadCategory();
    loadBestSellers();
  }

  @override
  Widget build(BuildContext context) {
    var data = EasyLocalizationProvider.of(context).data;
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    double size = mediaQueryData.size.height;

    /// Navigation to MenuDetail.dart if user Click icon in category Menu like a example camera
    var onClickMenuIcon = () {
      Navigator.of(context).push(PageRouteBuilder(
          pageBuilder: (_, __, ___) => new menuDetail(),
          transitionDuration: Duration(milliseconds: 750),

          /// Set animation with opacity
          transitionsBuilder:
              (_, Animation<double> animation, __, Widget child) {
            return Opacity(
              opacity: animation.value,
              child: child,
            );
          }));
    };

    /// Navigation to promoDetail.dart if user Click icon in Week Promotion
    var onClickWeekPromotion = () {
      Navigator.of(context).push(PageRouteBuilder(
          pageBuilder: (_, __, ___) => new promoDetail(),
          transitionDuration: Duration(milliseconds: 750),
          transitionsBuilder:
              (_, Animation<double> animation, __, Widget child) {
            return Opacity(
              opacity: animation.value,
              child: child,
            );
          }));
    };

    /// Navigation to categoryDetail.dart if user Click icon in Category
    var onClickCategory = (String categoryLink,String categoryName) {
      Navigator.of(context).push(PageRouteBuilder(
          pageBuilder: (_, __, ___) => new categoryDetail(categoryLink,categoryName),
          transitionDuration: Duration(milliseconds: 750),
          transitionsBuilder:
              (_, Animation<double> animation, __, Widget child) {
            return Opacity(
              opacity: animation.value,
              child: child,
            );
          }));
    };

    /// Declare device Size
    var deviceSize = MediaQuery.of(context).size;

    Widget loadingLayoutSlider() {
      return Shimmer.fromColors(
        baseColor: Colors.black12,
        highlightColor: Colors.white,
        child: Container(
          color: Colors.black12,
        ),
      );
    }

    /// ImageSlider in header
    var imageSlider = Container(
      height: 182.0,
      child: sliderResponseModel != null
          ? new Carousel(
              boxFit: BoxFit.cover,
              dotColor: Color(0xFF6991C7).withOpacity(0.8),
              dotSize: 5.5,
              dotSpacing: 16.0,
              dotBgColor: Colors.transparent,
              showIndicator: true,
              overlayShadow: true,
              overlayShadowColors: Colors.white.withOpacity(0.9),
              overlayShadowSize: 0.9,
              images:
                  sliderImages /*[
          AssetImage("assets/img/baner1.png"),
          AssetImage("assets/img/baner12.png"),
          AssetImage("assets/img/baner2.png"),
          AssetImage("assets/img/baner3.png"),
          AssetImage("assets/img/baner4.png"),
        ]*/
              ,
            )
          : loadingLayoutSlider(),
    );

    /// CategoryIcon Component
    var categoryIcon = Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 20.0),
      alignment: AlignmentDirectional.centerStart,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20.0, top: 0.0, right: 20.0),
            child: Text(
              AppLocalizations.of(context).tr('menu'),
              style: TextStyle(
                  fontSize: 13.5,
                  fontFamily: "Sans",
                  fontWeight: FontWeight.w700),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20.0)),

          /// Get class CategoryIconValue
          CategoryIconValue(
            tap1: onClickMenuIcon,
            icon1: "assets/icon/camera.png",
            title1: AppLocalizations.of(context).tr('camera'),
            tap2: onClickMenuIcon,
            icon2: "assets/icon/food.png",
            title2: AppLocalizations.of(context).tr('food'),
            tap3: onClickMenuIcon,
            icon3: "assets/icon/handphone.png",
            title3: AppLocalizations.of(context).tr('handphone'),
            tap4: onClickMenuIcon,
            icon4: "assets/icon/game.png",
            title4: AppLocalizations.of(context).tr('gamming'),
          ),
          Padding(padding: EdgeInsets.only(top: 23.0)),
          CategoryIconValue(
            icon1: "assets/icon/fashion.png",
            tap1: onClickMenuIcon,
            title1: AppLocalizations.of(context).tr('fashion'),
            icon2: "assets/icon/health.png",
            tap2: onClickMenuIcon,
            title2: AppLocalizations.of(context).tr('healthCare'),
            icon3: "assets/icon/pc.png",
            tap3: onClickMenuIcon,
            title3: AppLocalizations.of(context).tr('computer'),
            icon4: "assets/icon/mesin.png",
            tap4: onClickMenuIcon,
            title4: AppLocalizations.of(context).tr('equipment'),
          ),
          Padding(padding: EdgeInsets.only(top: 23.0)),
          CategoryIconValue(
            icon1: "assets/icon/otomotif.png",
            tap1: onClickMenuIcon,
            title1: AppLocalizations.of(context).tr('otomotif'),
            icon2: "assets/icon/sport.png",
            tap2: onClickMenuIcon,
            title2: AppLocalizations.of(context).tr('sport'),
            icon3: "assets/icon/ticket.png",
            tap3: onClickMenuIcon,
            title3: AppLocalizations.of(context).tr('ticketCinema'),
            icon4: "assets/icon/book.png",
            tap4: onClickMenuIcon,
            title4: AppLocalizations.of(context).tr('books'),
          ),
          Padding(padding: EdgeInsets.only(bottom: 30.0))
        ],
      ),
    );

    /// ListView a WeekPromotion Component
    var PromoHorizontalList = Container(
      color: Colors.white,
      height: 230.0,
      padding: EdgeInsets.only(bottom: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(
                  left: 20.0, top: 15.0, bottom: 3.0, right: 20.0),
              child: Text(
                AppLocalizations.of(context).tr('weekPromotion'),
                style: TextStyle(
                    fontSize: 15.0,
                    fontFamily: "Sans",
                    fontWeight: FontWeight.w700),
              )),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 10.0),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 20.0)),
                InkWell(
                    onTap: onClickWeekPromotion,
                    child: Image.asset("assets/imgPromo/Discount1.png")),
                Padding(padding: EdgeInsets.only(left: 10.0)),
                InkWell(
                    onTap: onClickWeekPromotion,
                    child: Image.asset("assets/imgPromo/Discount3.png")),
                Padding(padding: EdgeInsets.only(left: 10.0)),
                InkWell(
                    onTap: onClickWeekPromotion,
                    child: Image.asset("assets/imgPromo/Discount2.png")),
                Padding(padding: EdgeInsets.only(left: 10.0)),
                InkWell(
                    onTap: onClickWeekPromotion,
                    child: Image.asset("assets/imgPromo/Discount4.png")),
                Padding(padding: EdgeInsets.only(left: 10.0)),
                InkWell(
                    onTap: onClickWeekPromotion,
                    child: Image.asset("assets/imgPromo/Discount5.png")),
                Padding(padding: EdgeInsets.only(left: 10.0)),
                InkWell(
                    onTap: onClickWeekPromotion,
                    child: Image.asset("assets/imgPromo/Discount6.png")),
              ],
            ),
          ),
        ],
      ),
    );

    /// FlashSale component
    var FlashSell = Container(
      height: 390.0,
      decoration: BoxDecoration(
        /// To set Gradient in flashSale background
        gradient: LinearGradient(colors: [
          Color(0xFF7F7FD5).withOpacity(0.8),
          Color(0xFF86A8E7),
          Color(0xFF91EAE4)
        ]),
      ),

      /// To set FlashSale Scrolling horizontal
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding:
                    EdgeInsets.only(left: mediaQueryData.padding.left + 20),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/img/flashsaleicon.png",
                    height: deviceSize.height * 0.087,
                  ),
                  Text(
                    AppLocalizations.of(context).tr('flash'),
                    style: TextStyle(
                      fontFamily: "Popins",
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    AppLocalizations.of(context).tr('sale'),
                    style: TextStyle(
                      fontFamily: "Sans",
                      fontSize: 28.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: mediaQueryData.padding.top + 30),
                  ),
                  Text(
                    AppLocalizations.of(context).tr('endSaleIn'),
                    style: TextStyle(
                      fontFamily: "Sans",
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2.0),
                  ),
                  CountDownTimer(
                      secondsRemaining: 86400,
                      whenTimeExpires: () {
                        setState(() {
                          //hasTimerStopped = true;
                        });
                      },
                      countDownTimerStyle: TextStyle(
                        fontFamily: "Sans",
                        fontSize: 19.0,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      )),
                ],
              )
            ],
          ),
          Padding(padding: EdgeInsets.only(left: 40.0)),
          todaysDealResponseModel != null
              ? (Row(
                  children: todaysDealResponseModel.data
                      .map((item) => flashSaleItem(
                            image: item.thumbnailImage,
                            title: item
                                .name /*AppLocalizations.of(context).tr('fTitle1')*/,
                            normalprice: "\$ ${item.basePrice}",
                            discountprice: "\$ ${item.baseDiscountedPrice}",
                            ratingvalue: "${item.rating}",
                            place:
                                "unknown" /*AppLocalizations.of(context).tr('fPlace1')*/,
                            stock:
                                AppLocalizations.of(context).tr('fAvailable1'),
                            colorLine: 0xFFFFA500,
                            widthLine: 50.0,
                          ))
                      .toList(),
                ))
              : CustomLoader(),

          /*      ListView.builder( scrollDirection: Axis.horizontal,
            itemCount: 4,itemBuilder: (context, index) {
           return flashSaleItem(
              image: "assets/imgItem/mackbook.jpg",
              title: AppLocalizations.of(context).tr('fTitle1'),
              normalprice: "\$ 2,020",
              discountprice: "\$ 1,300",
              ratingvalue: "(56)",
              place: AppLocalizations.of(context).tr('fPlace1'),
              stock: AppLocalizations.of(context).tr('fAvailable1'),
              colorLine: 0xFFFFA500,
              widthLine: 50.0,
            );
          },),*/

          /// Get a component flashSaleItem class

          /* Padding(padding: EdgeInsets.only(left: 10.0)),
          flashSaleItem(
            image: "assets/imgItem/flashsale2.jpg",
            title: AppLocalizations.of(context).tr('fTitle2'),
            normalprice: "\$ 14",
            discountprice: "\$ 10",
            ratingvalue: "(16)",
            place: AppLocalizations.of(context).tr('fPlace2'),
            stock:  AppLocalizations.of(context).tr('fAvailable2'),
            colorLine: 0xFF52B640,
            widthLine: 100.0,
          ),
          Padding(padding: EdgeInsets.only(left: 10.0)),
          flashSaleItem(
            image: "assets/imgItem/flashsale3.jpg",
            title:  AppLocalizations.of(context).tr('fTitle3'),
            normalprice: "\$ 1,000",
            discountprice: "\$ 950",
            ratingvalue: "(20)",
            place: AppLocalizations.of(context).tr('fPlace3'),
            stock:  AppLocalizations.of(context).tr('fAvailable3'),
            colorLine: 0xFF52B640,
            widthLine: 90.0,
          ),
          Padding(padding: EdgeInsets.only(left: 10.0)),
          flashSaleItem(
            image: "assets/imgItem/flashsale4.jpg",
            title: AppLocalizations.of(context).tr('fTitle4'),
            normalprice: "\$ 25",
            discountprice: "\$ 20",
            ratingvalue: "(22)",
            place: AppLocalizations.of(context).tr('fPlace4'),
            stock: AppLocalizations.of(context).tr('fAvailable4'),
            colorLine: 0xFFFFA500,
            widthLine: 30.0,
          ),
          Padding(padding: EdgeInsets.only(left: 10.0)),
          flashSaleItem(
            image: "assets/imgItem/flashsale5.jpg",
            title: AppLocalizations.of(context).tr('fTitle5'),
            normalprice: "\$ 50",
            discountprice: "\$ 30",
            ratingvalue: "(10)",
            place: AppLocalizations.of(context).tr('fPlace5'),
            stock: AppLocalizations.of(context).tr('fAvailable5'),
            colorLine: 0xFF52B640,
            widthLine: 100.0,
          ),
          Padding(padding: EdgeInsets.only(left: 10.0)),*/
        ],
      ),
    );

    Widget categoryListItem(
        {String image,
        String title,
        Function ontap,
        String categoryLink,
        String subCategoryLink}) {
      return Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 15.0)),
            CategoryItemValue(
              image: ASSET_URL + image,
              title: title /*AppLocalizations.of(context).tr('fashionMan')*/,
              tap: (){onClickCategory(categoryLink,title);},
            ),
            /*  Padding(
              padding: EdgeInsets.only(top: 10.0),
            ),
            CategoryItemValue(
              image: "assets/imgItem/category1.png",
              title: AppLocalizations.of(context).tr('fashionGirl'),
              tap: onClickCategory,
            ),*/
          ],
        ),
      );
    }

    /// Category Component in bottom of flash sale
    var categoryImageBottom = Container(
      height: 180.0,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
            child: Text(
              AppLocalizations.of(context).tr('category'),
              style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Sans"),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  allCategoryResponseModel != null
                      ? (Row(
                          children: allCategoryResponseModel.data
                              .map((item) => categoryListItem(
                                  image: item.banner,
                                  title: item.name,
                                  categoryLink: item.links.products,
                                  subCategoryLink: item.links.subCategories))
                              .toList(),
                        ))
                      : CustomLoader(),
                  /*  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(top: 15.0)),
                        CategoryItemValue(
                          image: "assets/imgItem/category2.png",
                          title: AppLocalizations.of(context).tr('fashionMan'),
                          tap: onClickCategory,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                        ),
                        CategoryItemValue(
                          image: "assets/imgItem/category1.png",
                          title: AppLocalizations.of(context).tr('fashionGirl'),
                          tap: onClickCategory,
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 10.0)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top: 15.0)),
                      CategoryItemValue(
                        image: "assets/imgItem/category3.png",
                        title: AppLocalizations.of(context).tr('smartphone'),
                        tap: onClickCategory,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      CategoryItemValue(
                        image: "assets/imgItem/category4.png",
                        title: AppLocalizations.of(context).tr('computer'),
                        tap: onClickCategory,
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(left: 10.0)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top: 15.0)),
                      CategoryItemValue(
                        image: "assets/imgItem/category5.png",
                        title: AppLocalizations.of(context).tr('sport'),
                        tap: onClickCategory,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      CategoryItemValue(
                        image: "assets/imgItem/category6.png",
                        title: AppLocalizations.of(context).tr('fashionKids'),
                        tap: onClickCategory,
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(left: 10.0)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top: 15.0)),
                      CategoryItemValue(
                        image: "assets/imgItem/category7.png",
                        title: AppLocalizations.of(context).tr('health'),
                        tap: onClickCategory,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      CategoryItemValue(
                        image: "assets/imgItem/category8.png",
                        title: AppLocalizations.of(context).tr('makeup'),
                        tap: onClickCategory,
                      ),
                    ],
                  ),*/
                ],
              ),
            ),
          )
        ],
      ),
    );

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

    ///  Grid item in bottom of Category
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
                "Best Seller",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 17.0,
                ),
              ),
            ),

            /// To set GridView item
            bestSellerResponse != null
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
                      bestSellerResponse.data.length,
                      (index) => ItemGrid(bestSellerResponse, index),
                    ))
                : _loadingImageAnimation(context),
          ],
        ),
      ),
    );

    return EasyLocalizationProvider(
      data: data,
      child: Scaffold(
        /// Use Stack to costume a appbarF
        body: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(
                          top: mediaQueryData.padding.top + 58.5)),

                  /// Call var imageSlider
                  imageSlider,

                  /// Call var categoryIcon
                  categoryIcon,
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                  ),

                  /// Call var PromoHorizontalList
                  PromoHorizontalList,

                  /// Call var a FlashSell, i am sorry Typo :v
                  FlashSell,
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                  ),
                  categoryImageBottom,
                  Padding(
                    padding: EdgeInsets.only(bottom: 10.0),
                  ),

                  /// Call a Grid variable, this is item list in Recomended item
                  Grid,
                ],
              ),
            ),

            /// Get a class AppbarGradient
            /// This is a Appbar in home activity
            AppbarGradient(),
          ],
        ),
      ),
    );
  }

  Future<void> loadSlider() async {
    try {
      MainApi mainApi = new MainApi(context);
      Response response = await mainApi.loadSlider(context);
      if (response != null) {
        sliderResponseModel = SliderResponseModel.fromJson(response.toString());
        setState(() {
          if (sliderResponseModel != null) {
            for (int i = 0; i < sliderResponseModel.data.length; i++) {
              sliderImages.add(
                  NetworkImage(ASSET_URL + sliderResponseModel.data[i].photo));
            }
          }
        });
      }
    } catch (e) {
      print(e);
    }
  }

  void loadBestSellers() async {
    try {
      MainApi mainApi = new MainApi(context);
      Response response = await mainApi.loadBestSeller(context);
      if (response != null) {
        setState(() {
          bestSellerResponse = BestSellerResponse.fromJson(response.toString());
        });
      } else {}
    } catch (e) {
      print(e);
    }
  }

  void loadTodaysDeal() async {
    try {
      MainApi mainApi = new MainApi(context);
      Response response = await mainApi.loadTodaysDeal(context);
      if (response != null) {
        setState(() {
          todaysDealResponseModel =
              TodaysDealResponseModel.fromJson(response.toString());
        });
      } else {}
    } catch (e) {
      print(e);
    }
  }

  void loadCategory() async {
    try {
      MainApi mainApi = new MainApi(context);
      Response response = await mainApi.loadAllCategory(context);
      if (response != null) {
        setState(() {
          allCategoryResponseModel =
              AllCategoryResponseModel.fromJson(response.toString());
        });
      } else {}
    } catch (e) {
      print(e);
    }
  }
}

/// ItemGrid in bottom item "Recomended" item
class ItemGrid extends StatelessWidget {
  /// Get data from HomeGridItem.....dart class
//  GridItem gridItem;
  BestSellerResponse bestSellerResponse;
  int index;

  ItemGrid(this.bestSellerResponse, this.index);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return InkWell(
      onTap: () {
        Navigator.of(context).push(PageRouteBuilder(
            pageBuilder: (_, __, ___) =>
                new detailProduk(bestSellerResponse.data[index].links.details),
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
                  tag: "hero-grid-${bestSellerResponse.data[index]}",
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
                                            "hero-grid-${bestSellerResponse.data[index]}",
                                        child: Image.network(
                                          ASSET_URL +
                                              bestSellerResponse
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
                                      bestSellerResponse
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
                    bestSellerResponse.data[index].name,
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
                    "\$ ${bestSellerResponse.data[index].basePrice}",
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
                            "${bestSellerResponse.data[index].rating}",
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
                        "${bestSellerResponse.data[index].sales} Sold",
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

/// Component FlashSaleItem
class flashSaleItem extends StatelessWidget {
  final String image;
  final String title;
  final String normalprice;
  final String discountprice;
  final String ratingvalue;
  final String place;
  final String stock;
  final int colorLine;
  final double widthLine;

  flashSaleItem(
      {this.image,
      this.title,
      this.normalprice,
      this.discountprice,
      this.ratingvalue,
      this.place,
      this.stock,
      this.colorLine,
      this.widthLine});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.of(context).push(PageRouteBuilder(
                    pageBuilder: (_, __, ___) => new flashSale(),
                    transitionsBuilder:
                        (_, Animation<double> animation, __, Widget child) {
                      return Opacity(
                        opacity: animation.value,
                        child: child,
                      );
                    },
                    transitionDuration: Duration(milliseconds: 850)));
              },
              child: Container(
                height: 310.0,
                width: 145.0,
                color: Colors.white,
                margin: EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 140.0,
                      width: 145.0,
                      child: Image.network(
                        ASSET_URL + image,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 8.0, right: 8.0, top: 15.0),
                      child: Text(
                        title,
                        style: TextStyle(
                            fontSize: 10.5,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Sans"),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 10.0, top: 5.0, right: 10.0),
                      child: Text(normalprice,
                          style: TextStyle(
                              fontSize: 10.5,
                              decoration: TextDecoration.lineThrough,
                              color: Colors.black54,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Sans")),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 10.0, top: 5.0, right: 10.0),
                      child: Text(discountprice,
                          style: TextStyle(
                              fontSize: 12.0,
                              color: Color(0xFF7F7FD5),
                              fontWeight: FontWeight.w800,
                              fontFamily: "Sans")),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, top: 5.0, right: 10.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            size: 11.0,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            size: 11.0,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            size: 11.0,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            size: 11.0,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star_half,
                            size: 11.0,
                            color: Colors.yellow,
                          ),
                          Text(
                            ratingvalue,
                            style: TextStyle(
                                fontSize: 10.0,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Sans",
                                color: Colors.black38),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, top: 5.0, right: 10.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            size: 11.0,
                            color: Colors.black38,
                          ),
                          Text(
                            place,
                            style: TextStyle(
                                fontSize: 10.0,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Sans",
                                color: Colors.black38),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, left: 10.0, right: 10.0),
                      child: Text(
                        stock,
                        style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Sans",
                            color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 4.0, left: 10.0, right: 10.0),
                      child: Container(
                        height: 5.0,
                        width: widthLine,
                        decoration: BoxDecoration(
                            color: Color(colorLine),
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

/// Component category item bellow FlashSale
class CategoryItemValue extends StatelessWidget {
  String image, title;
  GestureTapCallback tap;

  CategoryItemValue({
    this.image,
    this.title,
    this.tap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tap,
      child: Container(
        height: 105.0,
        width: 160.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(3.0)),
          image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(3.0)),
            color: Colors.black.withOpacity(0.25),
          ),
          child: Center(
              child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Berlin",
              fontSize: 18.5,
              letterSpacing: 0.7,
              fontWeight: FontWeight.w800,
            ),
          )),
        ),
      ),
    );
  }
}

/// Component item Menu icon bellow a ImageSlider
class CategoryIconValue extends StatelessWidget {
  String icon1, icon2, icon3, icon4, title1, title2, title3, title4;
  GestureTapCallback tap1, tap2, tap3, tap4;

  CategoryIconValue(
      {this.icon1,
      this.tap1,
      this.icon2,
      this.tap2,
      this.icon3,
      this.tap3,
      this.icon4,
      this.tap4,
      this.title1,
      this.title2,
      this.title3,
      this.title4});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        InkWell(
          onTap: tap1,
          child: Column(
            children: <Widget>[
              Image.asset(
                icon1,
                height: 19.2,
              ),
              Padding(padding: EdgeInsets.only(top: 7.0)),
              Text(
                title1,
                style: TextStyle(
                  fontFamily: "Sans",
                  fontSize: 10.0,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
        InkWell(
          onTap: tap2,
          child: Column(
            children: <Widget>[
              Image.asset(
                icon2,
                height: 26.2,
              ),
              Padding(padding: EdgeInsets.only(top: 0.0)),
              Text(
                title2,
                style: TextStyle(
                  fontFamily: "Sans",
                  fontSize: 10.0,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
        InkWell(
          onTap: tap3,
          child: Column(
            children: <Widget>[
              Image.asset(
                icon3,
                height: 22.2,
              ),
              Padding(padding: EdgeInsets.only(top: 4.0)),
              Text(
                title3,
                style: TextStyle(
                  fontFamily: "Sans",
                  fontSize: 10.0,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
        InkWell(
          onTap: tap4,
          child: Column(
            children: <Widget>[
              Image.asset(
                icon4,
                height: 19.2,
              ),
              Padding(padding: EdgeInsets.only(top: 7.0)),
              Text(
                title4,
                style: TextStyle(
                  fontFamily: "Sans",
                  fontSize: 10.0,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
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
