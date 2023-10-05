// network_api_service.dart
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:mercedes_car_info/data/api/base_api_provider.dart';
import 'package:http/http.dart' as http;


class NetworkApiService extends BaseApiProvider {

  Future getCarsByMarket(String url) async {
    dynamic responseJson;
    try {
      print("here 02");
        var query = {
          "x-api-key": apiKey,
        };
        var uri = Uri.parse(baseUrl + url);
        // var uri = Uri.http(baseUrl, url, query);
        print("URI");
        print(uri.toString());
        final response = await http.get(uri,headers: query);
        responseJson = returnResponse(response);

    } catch(e) {
      if (kDebugMode) {
        print(e.toString());
      }
      // if(e is AppException) {
      //   throw FetchDataException(e.toString());
      // } else if(e is SocketException){
      //   throw FetchDataException("Socket Exception: ${e.toString()}");
      // } else {
      //   throw FetchDataException("Something went wrong: ${e.toString()}");
      // }
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        // throw BadRequestException(response.toString());
      case 401:
      case 403:
      case 404:
        // dynamic responseJson = jsonDecode(response.body);
        // throw UnauthorisedException(responseJson['message']);
      case 500:
      default:
        // throw FetchDataException('Error occurred while communication with server with status code : ${response.statusCode}');
    }
  }
}