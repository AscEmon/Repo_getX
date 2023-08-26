import 'package:api_test/utils/enum.dart';

enum AppUrl {
  base,
  baseImage,
  getUrl,
  registration,
  login,
}

extension AppUrlExtention on AppUrl {
  static String _baseUrl = "";
  static String _baseImageUrl = "";

  static void setUrl(UrlLink urlLink) {
    switch (urlLink) {
      case UrlLink.isLive:
        _baseUrl = "";
        _baseImageUrl = "";

        break;

      case UrlLink.isDev:
        _baseUrl = "http://restapi.adequateshop.com/api/";
        _baseImageUrl = "";

        break;
      case UrlLink.isLocalServer:
        // set up your local server ip address.
        _baseUrl = "";
        break;
    }
  }

  String get url {
    switch (this) {
      case AppUrl.base:
        return _baseUrl;
      case AppUrl.baseImage:
        return _baseImageUrl;
      case AppUrl.registration:
        return "AuthAccount/Registration";
      case AppUrl.login:
        return "AuthAccount/Login";
      case AppUrl.getUrl:
        return "Users";

      default:
    }
    return "";
  }
}
