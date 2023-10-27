//car_repository.dart
import '../data/api/services/network_api_service.dart';
import '../data/api/url_constants.dart';

abstract class CarRepo {
  Future<dynamic> getCarsByMarket(String value) async {}
  Future<dynamic> getInitialConfig(String modelID) async {}
  Future<dynamic> getCarByConfig(String modelID,String configID) async {}
  Future<dynamic> getCountriesData() async {}
}

// new_repo_imp.dart
class CarRepository extends CarRepo {

  final NetworkApiService _apiService = NetworkApiService();

  @override
  Future getCarsByMarket(String value) async {
    try {
      print("here 01");
      dynamic response = await _apiService.getApiCall(UrlConstants.getCarsByMarket);
      return response;
    } catch(e) {
      rethrow;
    }
  }

  @override
  Future getInitialConfig(String modelID) async {
    try{
      print("here 02 $modelID");
      dynamic response = await _apiService.getApiCall(
          "${UrlConstants.getCarsByMarket}/$modelID${UrlConstants.getInitialConfig}");
      return response;
    }
    catch(e){
      rethrow;
    }
  }

  @override
  Future getCarByConfig(String modelID,String configID) async {
    try {
      print("here 03");
      dynamic response = await _apiService.getApiCall(
          "${UrlConstants.getCarsByMarket}/$modelID/configurations/$configID/images/vehicle"
          // UrlConstants.getSpecificConfigCarUrlLast
      );
      return response;
    } catch(e) {
      rethrow;
    }
  }

  // This method read data from local JSON file
  @override
  Future getCountriesData() async {
    // try {
    //   dynamic response = await rootBundle.loadString('assets/json/countries_data.json');
    //   return response;
    // } catch(e) {
    //   rethrow;
    // }
  }
}