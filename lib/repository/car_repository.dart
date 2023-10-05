//car_repository.dart
import '../data/api/services/network_api_service.dart';
import '../data/api/url_constants.dart';

abstract class CarRepo {
  Future<dynamic> getCarsByMarket(String value) async {}
  Future<dynamic> getCountriesData() async {}
}

// new_repo_imp.dart
class CarRepository extends CarRepo {

  final NetworkApiService _apiService = NetworkApiService();

  @override
  Future getCarsByMarket(String value) async {
    try {
      print("here 01");
      dynamic response = await _apiService.getCarsByMarket(UrlConstants.getCarsByMarket);
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