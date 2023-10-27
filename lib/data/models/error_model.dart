class ErrorModel {
  String? errorMessage;
  String? statusCode;
  String? message;

  ErrorModel({this.errorMessage, this.statusCode, this.message});

  ErrorModel.fromJson(Map<String, dynamic> json) {
    errorMessage = json['errorMessage'];
    statusCode = json['statusCode'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['errorMessage'] = errorMessage;
    data['statusCode'] = statusCode;
    data['message'] = message;
    return data;
  }
}
