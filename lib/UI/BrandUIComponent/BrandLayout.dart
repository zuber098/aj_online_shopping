import 'dart:async';

import 'package:ajonlineshope/Api/MainApi.dart';
import 'package:ajonlineshope/Library/Language_Library/lib/easy_localization_delegate.dart';
import 'package:ajonlineshope/Library/Language_Library/lib/easy_localization_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:ajonlineshope/UI/BrandUIComponent/BrandDetail.dart';
import 'package:ajonlineshope/ListItem/BrandDataList.dart';
import 'package:ajonlineshope/UI/HomeUIComponent/Search.dart';

bool loadImage = true;

class brand extends StatefulWidget {
  @override
  _brandState createState() => _brandState();
}

class _brandState extends State<brand> {
  @override
  Widget build(BuildContext context) {
    /// Component appbar
    
    var data = EasyLocalizationProvider.of(context).data;

    return EasyLocalizationProvider(
      data: data,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Scaffold(
          /// Calling variable appbar
          appBar: AppBar(
      backgroundColor: Color(0xFFFFFFFF),
      elevation: 0.0,
      title: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
        child: Text(
          AppLocalizations.of(context).tr('categoryBrand'),
          style: TextStyle(
            fontFamily: "Gotik",
            fontSize: 20.0,
            color: Colors.black54,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      actions: <Widget>[
        InkWell(
          onTap: () {
            Navigator.of(context).push(PageRouteBuilder(
                pageBuilder: (_, __, ___) => new searchAppbar()));
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 20.0),
            child: Icon(
              Icons.search,
              size: 27.0,
              color: Colors.black54,
            ),
          ),
        )
      ],
    )
,
          body: _imageLoaded(context),
        ),
      ),
    );
  }

  @override
  void initState() {
    getTopBrands();
    super.initState();
  }

  void getTopBrands() async {
    try {
      MainApi mainAPi = new MainApi(context);
      Response response = await mainAPi.getTopBrands(context);
      if (response != null) {
      } else {}
    } catch (e) {
      print(e);
    }
  }
}

///
///
/// Calling ImageLoaded animation for set layout
///
///
Widget _imageLoaded(BuildContext context) {
  return Container(
    color: Colors.white,
    child: CustomScrollView(
      /// Create List Menu
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.only(top: 0.0),
          sliver: SliverFixedExtentList(
            itemExtent: 145.0,
            delegate: SliverChildBuilderDelegate(
              /// Calling itemCard Class for constructor card
              (context, index) => itemCard(brandData[index]),
              childCount: brandData.length,
            ),
          ),
        ),
      ],
    ),
  );
}

/// Constructor for itemCard for List Menu
class itemCard extends StatefulWidget {
  /// Declaration and Get data from BrandDataList.dart
  final Brand brand;

  itemCard(this.brand);

  _itemCardState createState() => _itemCardState(brand);
}

class _itemCardState extends State<itemCard> {
  final Brand brand;

  _itemCardState(this.brand);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushAndRemoveUntil(
              PageRouteBuilder(
                  pageBuilder: (_, __, ___) => new brandDetail(brand),
                  transitionDuration: Duration(milliseconds: 600),
                  transitionsBuilder:
                      (_, Animation<double> animation, __, Widget child) {
                    return Opacity(
                      opacity: animation.value,
                      child: child,
                    );
                  }),
              (Route<dynamic> route) => true);
        },
        child: Container(
          height: 130.0,
          width: 400.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15.0))),
          child: Hero(
            tag: 'hero-tag-${brand.id}',
            transitionOnUserGestures: true,
            child: Material(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  image: DecorationImage(
                      image: AssetImage(brand.img), fit: BoxFit.cover),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFABABAB).withOpacity(0.3),
                      blurRadius: 1.0,
                      spreadRadius: 2.0,
                    ),
                  ],
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    color: Colors.black12.withOpacity(0.1),
                  ),
                  child: Center(
                    child: Text(
                      brand.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Berlin",
                        fontSize: 35.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
