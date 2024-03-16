import 'dart:convert';

import 'dart:io';

import 'package:getx_mvvm/data/app_exeptions.dart';
import 'package:getx_mvvm/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class NetworApiServices extends BaseApiServices {
  @override
  Future getGetApiResponse(String url) async {
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataExeption('No Internet Connection');
    }

    return responseJson;
  }

  @override
  Future getPostApiResponse(String url, dynamic data) async {
    dynamic responseJson;
    try {
      Response response = await post(
        Uri.parse(url),
        body: data,
      ).timeout(Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataExeption('');
    } on RequestTimeout {
      throw RequestTimeout('');
    } on ServerExeption {
      throw ServerExeption('');
    } on FetchDataExeption {
      throw FetchDataExeption('');
    } on BadRequestExeption {
      throw BadRequestExeption('');
    } on UnAuthorizedExeption {
      throw UnAuthorizedExeption('');
    } on InvalidExeption {
      throw InvalidExeption();
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadRequestExeption(response.body.toString());
      case 500:
      case 404:
        throw UnAuthorizedExeption(response.body.toString());
      default:
        throw FetchDataExeption(
            'Error accured while communicating with server' +
                'with status code' +
                response.statusCode.toString());
    }
  }
}
