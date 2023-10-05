import 'dart:convert';
import 'package:http/http.dart' as http;

class BaseApiProvider {
  final String baseUrl = "https://api.mercedes-benz.com/configurator/v2";

  final String apiKey = "e11400e5-d8c2-4fc2-b129-34d0020084d6";

  // Get the token from shared pref
  // _getToken() async {
  //   SharedPreferences localStorage = await SharedPreferences.getInstance();
  // }

  // get auth data
  authData(data, apiUrl) async {
    var fullUrl = Uri.parse(baseUrl + apiUrl);
    return await http.post(
      fullUrl,
      body: jsonEncode(data),
      headers: _setHeaders(),
    );
  }

  // get data from server
  getData(apiUrl) async {
    var fullUrl = Uri.parse(baseUrl + apiUrl);
    // await _getToken();
    return await http.get(
      fullUrl,
      headers: _setHeaders(),
    );
  }

  // post data to server
  postData(apiUrl, data) async {
    var fullUrl = Uri.parse(baseUrl + apiUrl);
    // await _getToken();
    return await http.post(
      fullUrl,
      headers: _setHeaders(),
      body: jsonEncode(data),
    );
  }

  putData(apiUrl, data) async {
    var fullUrl = Uri.parse(baseUrl + apiUrl);
    // await _getToken();

    return await http.put(
      fullUrl,
      headers: _setHeaders(),
      body: jsonEncode(data),
    );
  }

  deleteData(apiUrl) async {
    var fullUrl = Uri.parse(baseUrl + apiUrl);
    // await _getToken();

    return await http.delete(
      fullUrl,
      headers: _setHeaders(),
    );
  }

  // Set header for the request
  _setHeaders() => {
    'Content-type': 'application/json',
    'Accept': 'application/json',
    // 'Authorization': 'Bearer $token',
  };
}
