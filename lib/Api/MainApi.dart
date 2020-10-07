import 'package:ajonlineshope/Api/BaseApi.dart';
import 'package:ajonlineshope/Utils/CommanStrings.dart';
import 'package:ajonlineshope/Utils/CommonLogic.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toast/toast.dart';

class MainApi {
  BuildContext context;

  String name,
      email,
      password,
      confirmPassword,
      imagePath,
      address,
      city,
      country,
      pincode,
      number;
  int userId, productId;

  MainApi(this.context);

  MainApi.Register(
      {this.name, this.email, this.password, this.confirmPassword});

  MainApi.Login({this.email, this.password});

  MainApi.GetUser({this.context, this.userId});

  MainApi.UpdateProfie(
      {this.context,
      this.imagePath,
      this.name,
      this.password,
      this.userId,
      this.address,
      this.city,
      this.country,
      this.pincode,
      this.email,
      this.number});

  MainApi.UpdateAddress({
    this.context,
    this.userId,
    this.address,
    this.city,
    this.country,
    this.pincode,
  });

  MainApi.AddToCart({this.context, this.productId});

  Future<Response> register(BuildContext context) async {
    bool isDeviceOnline = await checkConnection();

    if (isDeviceOnline) {
      try {
        BaseApi baseApi = new BaseApi();
        FormData formData = new FormData.fromMap({
          "name": name.trim(),
          "email": email.trim(),
          "password": password.trim(),
          "passowrd_confirmation": confirmPassword.trim()
        });
        Response response =
            await baseApi.dio.post(registerSubUrl, data: formData);

        print("Register response: $response");
        return response;
      } catch (e) {
        print("Register error: $e");
        displayToast("Someting went wrong, Please try again with another email",
            context);
        return null;
      }
    } else {
      displayToast("Please connect to internet", context);
      return null;
    }
  }

  Future<Response> login(BuildContext context) async {
    bool isDeviceOnline = await checkConnection();
    if (isDeviceOnline) {
      try {
        BaseApi baseApi = new BaseApi();
        FormData formData = new FormData.fromMap({
          "email": email.trim(),
          "password": password.trim(),
        });
        Response response = await baseApi.dio.post(loginSubUrl, data: formData);

        print("Login response: $response");
        return response;
      } catch (e) {
        print("Login response: $e");
        displayToast(
            "Email and password not matched to any account, please try again",
            context);
        return null;
      }
    } else {
      displayToast("Please connect to internet", context);
      return null;
    }
  }

  Future<Response> logout(BuildContext context) async {
    bool isDeviceOnline = await checkConnection();

    if (isDeviceOnline) {
      try {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        String accessToken = prefs.getString("accessToken");
        String tokenType = prefs.getString("tokenType");

        BaseApi baseApi = new BaseApi();
        Options _options = Options(headers: {
          'content-Type': 'application/json',
          "Authorization": '$tokenType $accessToken'
        });
        Response response =
            await baseApi.dio.get(logoutSubUrl, options: _options);

        return response;
      } catch (e) {
        print(e);
        displayToast("Logout failed", context);
        return null;
      }
    } else {
      displayToast("Please connect to internet", context);
      return null;
    }
  }

  Future<Response> loadSlider(BuildContext context) async {
    bool isDeviceOnline = await checkConnection();

    if (isDeviceOnline) {
      try {
        BaseApi baseApi = new BaseApi();

        Response response = await baseApi.dio.get(sliderSubUrl);

        print("Slider Response: $response");
        return response;
      } catch (e) {
        print("slider error : $e");

        return null;
      }
    } else {
      return null;
    }
  }

  Future<Response> loadBestSeller(BuildContext context) async {
    bool isDeviceOnline = await checkConnection();

    if (isDeviceOnline) {
      try {
        BaseApi baseApi = new BaseApi();

        Response response = await baseApi.dio.get(bestSellerSubUrl);

        print("BestSeller Response: $response");
        return response;
      } catch (e) {
        print("BestSeller error : $e");

        return null;
      }
    } else {
      return null;
    }
  }

  Future<Response> loadTodaysDeal(BuildContext context) async {
    bool isDeviceOnline = await checkConnection();

    if (isDeviceOnline) {
      try {
        BaseApi baseApi = new BaseApi();

        Response response = await baseApi.dio.get(todaysDealSubUrl);

        print("Today\'s deal Response: $response");
        return response;
      } catch (e) {
        print("Today\'s deal error : $e");

        return null;
      }
    } else {
      return null;
    }
  }

  Future<Response> loadAllCategory(BuildContext context) async {
    bool isDeviceOnline = await checkConnection();

    if (isDeviceOnline) {
      try {
        BaseApi baseApi = new BaseApi();

        Response response = await baseApi.dio.get(allCategorySubUrl);

        print("All category Response: $response");
        return response;
      } catch (e) {
        print("All category error : $e");

        return null;
      }
    } else {
      return null;
    }
  }

  Future<Response> getProductDetails(BuildContext context, String link) async {
    bool isDeviceOnline = await checkConnection();

    if (isDeviceOnline) {
      try {
        BaseApi baseApi = new BaseApi();

        Response response = await baseApi.dio.get(link);

        print("Product Details: $response");
        return response;
      } catch (e) {
        print("product details error $e");
        return null;
      }
    } else {
      return null;
    }
  }

  Future<Response> getProductReview(BuildContext context, String link) async {
    bool isDeviceOnline = await checkConnection();

    if (isDeviceOnline) {
      try {
        BaseApi baseApi = new BaseApi();

        Response response = await baseApi.dio.get(link);

        print("Product Review: $response");
        return response;
      } catch (e) {
        print("Product review error $e");
        return null;
      }
    } else {
      return null;
    }
  }

  Future<Response> getRelatedProduct(BuildContext context, String link) async {
    bool isDeviceOnline = await checkConnection();

    if (isDeviceOnline) {
      try {
        BaseApi baseApi = new BaseApi();

        Response response = await baseApi.dio.get(link);

        print("Related Product: $response");
        return response;
      } catch (e) {
        print("Related Product error $e");
        return null;
      }
    }
    return null;
  }

  Future<Response> getCategoryData(BuildContext context, String link) async {
    bool isDeviceOnline = await checkConnection();

    if (isDeviceOnline) {
      try {
        BaseApi baseApi = new BaseApi();

        Response response = await baseApi.dio.get(link);

        print("Category Product: $response");
        return response;
      } catch (e) {
        print("Category Product error $e");
        return null;
      }
    }
    return null;
  }

  Future<Response> getTopBrands(BuildContext context) async {
    bool isDeviceOnline = await checkConnection();

    if (isDeviceOnline) {
      try {
        BaseApi baseApi = new BaseApi();

        Response response = await baseApi.dio.get(topBrandsSubUrl);

        print("Top brands: $response");
        return response;
      } catch (e) {
        print("Top brands error $e");
        return null;
      }
    }
    return null;
  }

  Future<Response> getUserData(BuildContext context) async {
    bool isDeviceOnline = await checkConnection();

    if (isDeviceOnline) {
      try {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        String accessToken = prefs.getString("accessToken");
        String tokenType = prefs.getString("tokenType");
        int userId = prefs.getInt("userId");
        BaseApi baseApi = new BaseApi();
        Options _options = Options(headers: {
          'content-Type': 'application/json',
          "Authorization": '$tokenType $accessToken'
        });
        Response response =
            await baseApi.dio.get("$userSubUrl$userId", options: _options);
        print("user response: $response");
        return response;
      } catch (e) {
        print("Get userdata error $e");
        return null;
      }
    } else {
      displayToast("Network error", context);
      return null;
    }
  }

  Future<Response> updateProfileDetails(BuildContext context) async {
    bool isDeviceOnline = await checkConnection();

    if (isDeviceOnline) {
      try {
        var imagData;
        if (imagePath == null) {
          imagData = null;
        } else {
          String fileName = imagePath;
          fileName = fileName.substring(fileName.lastIndexOf("/") + 1);
          imagData =
              await MultipartFile.fromFile(imagePath, filename: fileName);
        }

        SharedPreferences prefs = await SharedPreferences.getInstance();

        String tokenType = prefs.getString("tokenType");
        String accessToken = prefs.getString("accessToken");

        print("AccessToken:- $accessToken");

        BaseApi baseApi = new BaseApi();
        Options _options = Options(
//            followRedirects: false,
            contentType: 'multipart/form-data',
            headers: {
              'content-Type': 'application/json',
              "Authorization": '$tokenType $accessToken'
            });
        FormData formData;
        if (password != null && password.isNotEmpty) {
          formData = new FormData.fromMap({
            "user_id": userId,
            "name": name,
            "new_password": password,
            "confirm_password": password,
            "image": imagData,
          });
          print("${formData.toString()} $password");
        } else {
          formData = new FormData.fromMap({
            "user_id": userId,
            "name": name,
            "image": imagData,
          });
        }

        Response response = await baseApi.dio.post(
          updateUserSubUrl,
          options: _options,
          data: formData,
        );

        print("updateProfileResponse:- ${response.toString()}");

        return response;
      } catch (e) {
        print(e);
        return null;
      }
    } else {
      displayToast("Please connect to internet", context);
      return null;
    }
  }

  Future<Response> updateAddressDetails(BuildContext context) async {
    bool isDeviceOnline = await checkConnection();

    if (isDeviceOnline) {


      SharedPreferences prefs = await SharedPreferences.getInstance();

      String tokenType = prefs.getString("tokenType");
      String accessToken = prefs.getString("accessToken");

      print("AccessToken:- $accessToken \n ");

      BaseApi baseApi = new BaseApi();
      Options _options = Options(headers: {
        'content-Type': 'application/json',
        "Authorization": '$tokenType $accessToken'
      });

      FormData formData = new FormData.fromMap({
        "user_id": userId,
        "address": address,
        "country": country,
        "city": city,
        "postal_code": pincode,
      });
      print("country: $address $country ");
      Response response = await baseApi.dio
          .post(updateUserSubUrl, options: _options, data: formData);

      print("updateProfileResponse:- ${response.toString()}");

      return response;
    } else {
      displayToast("Please connect to internet", context);
      return null;
    }
  }

  Future<Response> addToCart(BuildContext context) async {
    bool isDeviceOnline = await checkConnection();

    if (isDeviceOnline) {
      try {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        String accessToken = prefs.getString("accessToken");
        String tokenType = prefs.getString("tokenType");
        int userId = prefs.getInt("userId");
        print("AccessToken:- $accessToken");
        print("user_id/product_id : $userId $productId $addToCartSubUrl");
        FormData formData = new FormData.fromMap({
          "user_id": userId,
          "product_id": productId,
        });

        /*var params = {
          "user_id": userId,
          "product_id": productId,

        };*/
        BaseApi baseApi = new BaseApi();
        Options _options = Options(headers: {
          'content-Type': 'application/json',
          "Authorization": '$tokenType $accessToken'
        });

        /*    baseApi.dio.options.headers['content-Type'] = 'application/json';
        baseApi.dio.options.headers["authorization"] =
        "$tokenType ${accessToken}";
        */
        Response response = await baseApi.dio
            .post(addToCartSubUrl, options: _options, data: formData);
        print("add to cart response: $response");
        return response;
      } catch (e) {
        print("add to cart error $e");
        return null;
      }
    } else {
      displayToast("Network error", context);
      return null;
    }
  }
}

displayToast(String msg, BuildContext context) {
  WidgetsBinding.instance.addPostFrameCallback(
      (_) => Toast.show(msg, context, duration: Toast.LENGTH_LONG));
}
