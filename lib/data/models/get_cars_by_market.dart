class GetCarsByMarket {
  String? modelId;
  String? internalModelSeries;
  String? name;
  String? shortName;
  Brand? brand;
  String? baumuster;
  String? baumuster6;
  String? baureihe;
  String? nationalSalesType;
  VehicleClass? vehicleClass;
  VehicleBody? vehicleBody;
  String? modelYear;
  String? productGroup;
  int? productDivision;
  String? lifeCycle;
  bool? facelift;
  bool? allTerrain;
  List<String>? customerGroups;
  PriceInformation? priceInformation;
  String? steeringPosition;
  ValidationStatus? validationStatus;
  Links? lLinks;

  GetCarsByMarket(
      {this.modelId,
        this.internalModelSeries,
        this.name,
        this.shortName,
        this.brand,
        this.baumuster,
        this.baumuster6,
        this.baureihe,
        this.nationalSalesType,
        this.vehicleClass,
        this.vehicleBody,
        this.modelYear,
        this.productGroup,
        this.productDivision,
        this.lifeCycle,
        this.facelift,
        this.allTerrain,
        this.customerGroups,
        this.priceInformation,
        this.steeringPosition,
        this.validationStatus,
        this.lLinks});

  GetCarsByMarket.fromJson(Map<String, dynamic> json) {
    modelId = json['modelId'];
    internalModelSeries = json['internalModelSeries'];
    name = json['name'];
    shortName = json['shortName'];
    brand = json['brand'] != null ? Brand.fromJson(json['brand']) : null;
    baumuster = json['baumuster'];
    baumuster6 = json['baumuster6'];
    baureihe = json['baureihe'];
    nationalSalesType = json['nationalSalesType'];
    vehicleClass = json['vehicleClass'] != null
        ? VehicleClass.fromJson(json['vehicleClass'])
        : null;
    vehicleBody = json['vehicleBody'] != null
        ? VehicleBody.fromJson(json['vehicleBody'])
        : null;
    modelYear = json['modelYear'];
    productGroup = json['productGroup'];
    productDivision = json['productDivision'];
    lifeCycle = json['lifeCycle'];
    facelift = json['facelift'];
    allTerrain = json['allTerrain'];
    customerGroups = json['customerGroups'].cast<String>();
    priceInformation = json['priceInformation'] != null
        ? PriceInformation.fromJson(json['priceInformation'])
        : null;
    steeringPosition = json['steeringPosition'];
    validationStatus = json['validationStatus'] != null
        ? ValidationStatus.fromJson(json['validationStatus'])
        : null;
    lLinks = json['_links'] != null ? Links.fromJson(json['_links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['modelId'] = modelId;
    data['internalModelSeries'] = internalModelSeries;
    data['name'] = name;
    data['shortName'] = shortName;
    if (brand != null) {
      data['brand'] = brand!.toJson();
    }
    data['baumuster'] = baumuster;
    data['baumuster6'] = baumuster6;
    data['baureihe'] = baureihe;
    data['nationalSalesType'] = nationalSalesType;
    if (vehicleClass != null) {
      data['vehicleClass'] = vehicleClass!.toJson();
    }
    if (vehicleBody != null) {
      data['vehicleBody'] = vehicleBody!.toJson();
    }
    data['modelYear'] = modelYear;
    data['productGroup'] = productGroup;
    data['productDivision'] = productDivision;
    data['lifeCycle'] = lifeCycle;
    data['facelift'] = facelift;
    data['allTerrain'] = allTerrain;
    data['customerGroups'] = customerGroups;
    if (priceInformation != null) {
      data['priceInformation'] = priceInformation!.toJson();
    }
    data['steeringPosition'] = steeringPosition;
    if (validationStatus != null) {
      data['validationStatus'] = validationStatus!.toJson();
    }
    if (lLinks != null) {
      data['_links'] = lLinks!.toJson();
    }
    return data;
  }
}

class Brand {
  String? name;

  Brand({this.name});

  Brand.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    return data;
  }
}

class VehicleClass {
  String? classId;
  String? className;
  Links? lLinks;

  VehicleClass({this.classId, this.className, this.lLinks});

  VehicleClass.fromJson(Map<String, dynamic> json) {
    classId = json['classId'];
    className = json['className'];
    lLinks = json['_links'] != null ? Links.fromJson(json['_links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['classId'] = classId;
    data['className'] = className;
    if (lLinks != null) {
      data['_links'] = lLinks!.toJson();
    }
    return data;
  }
}

class Links {
  String? self;
  String? models;

  Links({this.self, this.models});

  Links.fromJson(Map<String, dynamic> json) {
    self = json['self'];
    models = json['models'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['self'] = self;
    data['models'] = models;
    return data;
  }
}

class VehicleBody {
  String? bodyId;
  String? bodyName;
  Links? lLinks;

  VehicleBody({this.bodyId, this.bodyName, this.lLinks});

  VehicleBody.fromJson(Map<String, dynamic> json) {
    bodyId = json['bodyId'];
    bodyName = json['bodyName'];
    lLinks = json['_links'] != null ? Links.fromJson(json['_links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['bodyId'] = bodyId;
    data['bodyName'] = bodyName;
    if (lLinks != null) {
      data['_links'] = lLinks!.toJson();
    }
    return data;
  }
}

class PriceInformation {
  String? currency;
  double? netPrice;
  double? price;
  List<Taxes>? taxes;

  PriceInformation({this.currency, this.netPrice, this.price, this.taxes});

  PriceInformation.fromJson(Map<String, dynamic> json) {
    currency = json['currency'];
    netPrice = json['netPrice'];
    price = json['price'];
    if (json['taxes'] != null) {
      taxes = <Taxes>[];
      json['taxes'].forEach((v) {
        taxes!.add(Taxes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['currency'] = currency;
    data['netPrice'] = netPrice;
    data['price'] = price;
    if (taxes != null) {
      data['taxes'] = taxes!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Taxes {
  String? id;
  double? amount;
  double? baseAmount;
  int? charge;
  double? rate;
  String? taxFlag;

  Taxes(
      {this.id,
        this.amount,
        this.baseAmount,
        this.charge,
        this.rate,
        this.taxFlag});

  Taxes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    amount = json['amount'];
    baseAmount = json['baseAmount'];
    charge = json['charge'];
    rate = json['rate'];
    taxFlag = json['taxFlag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['amount'] = amount;
    data['baseAmount'] = baseAmount;
    data['charge'] = charge;
    data['rate'] = rate;
    data['taxFlag'] = taxFlag;
    return data;
  }
}

class ValidationStatus {
  bool? valid;

  ValidationStatus({this.valid});

  ValidationStatus.fromJson(Map<String, dynamic> json) {
    valid = json['valid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['valid'] = valid;
    return data;
  }
}
