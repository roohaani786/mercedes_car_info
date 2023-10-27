class VehicleImagesModel {
  Vehicle? vehicle;

  VehicleImagesModel({this.vehicle});

  VehicleImagesModel.fromJson(Map<String, dynamic> json) {
    vehicle =
    json['vehicle'] != null ? Vehicle.fromJson(json['vehicle']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (vehicle != null) {
      data['vehicle'] = vehicle!.toJson();
    }
    return data;
  }
}

class Vehicle {
  EXT020? eXT020;
  EXT020? iNT1;

  Vehicle({this.eXT020, this.iNT1});

  Vehicle.fromJson(Map<String, dynamic> json) {
    eXT020 =
    json['EXT020'] != null ? EXT020.fromJson(json['EXT020']) : null;
    iNT1 = json['INT1'] != null ? EXT020.fromJson(json['INT1']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (eXT020 != null) {
      data['EXT020'] = eXT020!.toJson();
    }
    if (iNT1 != null) {
      data['INT1'] = iNT1!.toJson();
    }
    return data;
  }
}

class EXT020 {
  String? url;

  EXT020({this.url});

  EXT020.fromJson(Map<String, dynamic> json) {
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    return data;
  }
}
