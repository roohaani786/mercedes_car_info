// network_api_service.dart
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mercedes_car_info/data/api/base_api_provider.dart';
import 'package:http/http.dart' as http;

import '../../models/error_model.dart';


class NetworkApiService extends BaseApiProvider {

  bool showLogs = true;

   showLogsInApp(bool value){
    showLogs = value;
  }

  Future getApiCall(String url) async {
    dynamic responseJson;
    try {
        var query = {
          "x-api-key": apiKey,
        };
        var uri = Uri.parse(baseUrl + url);
        // var uri = Uri.http(baseUrl, url, query);
        if(showLogs == true){
          print("==========");
          print("URI");
          print(uri.toString());
          print("==========");
          print("HEADERS");
          print(query.toString());
          print("==========");
        }
        final response = await http.get(uri,headers: query);
        if(response.statusCode == 200){
          responseJson = returnResponse(response);
          if(showLogs == true){
            print("==========");
            print("RESPONSE");
            print(response.toString());
            print("==========");
            print("RESPONSE JSON");
            print(responseJson.toString());
            print("==========");
          }
        }
        else{
          Fluttertoast.showToast(msg: jsonDecode(response.body)["message"]);
        }

    } catch(e) {
      if (kDebugMode) {
        print("EXCEPTION");
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
        ErrorModel errorResponse = ErrorModel.fromJson(jsonDecode(response.body));
        Fluttertoast.showToast(msg: "Response ${errorResponse.message??"An Error Occurred"}");
      case 401:
      ErrorModel errorResponse = ErrorModel.fromJson(jsonDecode(response.body));
      Fluttertoast.showToast(msg: "Response ${errorResponse.message??"An Error Occurred"}");
      case 403:
        ErrorModel errorResponse = ErrorModel.fromJson(jsonDecode(response.body));
        Fluttertoast.showToast(msg: "Response ${errorResponse.message??"An Error Occurred"}");
      case 404:
        ErrorModel errorResponse = ErrorModel.fromJson(jsonDecode(response.body));
        Fluttertoast.showToast(msg: "Response ${errorResponse.message??"An Error Occurred"}");
        // dynamic responseJson = jsonDecode(response.body);
        // throw UnauthorisedException(responseJson['message']);
      case 500:
        ErrorModel errorResponse = ErrorModel.fromJson(jsonDecode(response.body));
        Fluttertoast.showToast(msg: "Response ${errorResponse.message??"An Error Occurred"}");
      default:
        Fluttertoast.showToast(msg: 'Error occurred while communication with server with status code : ${response.statusCode}');
    }
  }
}