class InitialConfigModel {
  String? marketId;
  String? modelId;
  String? configurationId;
  String? vehicleId;
  String? typeClass;
  InitialPrice? initialPrice;
  InitialPrice? configurationPrice;
  DeltaExtraEquipmentPrice? deltaExtraEquipmentPrice;
  String? modelYear;
  String? productGroup;
  List<VehicleComponents>? vehicleComponents;
  List<ComponentCategories>? componentCategories;
  TechnicalInformation? technicalInformation;
  InsuranceDetails? insuranceDetails;
  bool? wltpConfiguration;
  ValidationStatus? validationStatus;
  Links? lLinks;

  InitialConfigModel(
      {this.marketId,
        this.modelId,
        this.configurationId,
        this.vehicleId,
        this.typeClass,
        this.initialPrice,
        this.configurationPrice,
        this.deltaExtraEquipmentPrice,
        this.modelYear,
        this.productGroup,
        this.vehicleComponents,
        this.componentCategories,
        this.technicalInformation,
        this.insuranceDetails,
        this.wltpConfiguration,
        this.validationStatus,
        this.lLinks});

  InitialConfigModel.fromJson(Map<String, dynamic> json) {
    marketId = json['marketId'];
    modelId = json['modelId'];
    configurationId = json['configurationId'];
    vehicleId = json['vehicleId'];
    typeClass = json['typeClass'];
    initialPrice = json['initialPrice'] != null
        ? InitialPrice.fromJson(json['initialPrice'])
        : null;
    configurationPrice = json['configurationPrice'] != null
        ? InitialPrice.fromJson(json['configurationPrice'])
        : null;
    deltaExtraEquipmentPrice = json['deltaExtraEquipmentPrice'] != null
        ? DeltaExtraEquipmentPrice.fromJson(
        json['deltaExtraEquipmentPrice'])
        : null;
    modelYear = json['modelYear'];
    productGroup = json['productGroup'];
    if (json['vehicleComponents'] != null) {
      vehicleComponents = <VehicleComponents>[];
      json['vehicleComponents'].forEach((v) {
        vehicleComponents!.add(VehicleComponents.fromJson(v));
      });
    }
    if (json['componentCategories'] != null) {
      componentCategories = <ComponentCategories>[];
      json['componentCategories'].forEach((v) {
        componentCategories!.add(ComponentCategories.fromJson(v));
      });
    }
    technicalInformation = json['technicalInformation'] != null
        ? TechnicalInformation.fromJson(json['technicalInformation'])
        : null;
    insuranceDetails = json['insuranceDetails'] != null
        ? InsuranceDetails.fromJson(json['insuranceDetails'])
        : null;
    wltpConfiguration = json['wltpConfiguration'];
    validationStatus = json['validationStatus'] != null
        ? ValidationStatus.fromJson(json['validationStatus'])
        : null;
    lLinks = json['_links'] != null ? Links.fromJson(json['_links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['marketId'] = marketId;
    data['modelId'] = modelId;
    data['configurationId'] = configurationId;
    data['vehicleId'] = vehicleId;
    data['typeClass'] = typeClass;
    if (initialPrice != null) {
      data['initialPrice'] = initialPrice!.toJson();
    }
    if (configurationPrice != null) {
      data['configurationPrice'] = configurationPrice!.toJson();
    }
    if (deltaExtraEquipmentPrice != null) {
      data['deltaExtraEquipmentPrice'] =
          deltaExtraEquipmentPrice!.toJson();
    }
    data['modelYear'] = modelYear;
    data['productGroup'] = productGroup;
    if (vehicleComponents != null) {
      data['vehicleComponents'] =
          vehicleComponents!.map((v) => v.toJson()).toList();
    }
    if (componentCategories != null) {
      data['componentCategories'] =
          componentCategories!.map((v) => v.toJson()).toList();
    }
    if (technicalInformation != null) {
      data['technicalInformation'] = technicalInformation!.toJson();
    }
    if (insuranceDetails != null) {
      data['insuranceDetails'] = insuranceDetails!.toJson();
    }
    data['wltpConfiguration'] = wltpConfiguration;
    if (validationStatus != null) {
      data['validationStatus'] = validationStatus!.toJson();
    }
    if (lLinks != null) {
      data['_links'] = lLinks!.toJson();
    }
    return data;
  }
}

class InitialPrice {
  double? price;
  int? netPrice;
  String? currency;
  List<Taxes>? taxes;

  InitialPrice({this.price, this.netPrice, this.currency, this.taxes});

  InitialPrice.fromJson(Map<String, dynamic> json) {
    price = json['price'];
    netPrice = json['netPrice'];
    currency = json['currency'];
    if (json['taxes'] != null) {
      taxes = <Taxes>[];
      json['taxes'].forEach((v) {
        taxes!.add(Taxes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['price'] = price;
    data['netPrice'] = netPrice;
    data['currency'] = currency;
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

class DeltaExtraEquipmentPrice {
  int? price;
  int? netPrice;
  String? currency;
  List<Taxes>? taxes;

  DeltaExtraEquipmentPrice(
      {this.price, this.netPrice, this.currency, this.taxes});

  DeltaExtraEquipmentPrice.fromJson(Map<String, dynamic> json) {
    price = json['price'];
    netPrice = json['netPrice'];
    currency = json['currency'];
    if (json['taxes'] != null) {
      taxes = <Taxes>[];
      json['taxes'].forEach((v) {
        taxes!.add(Taxes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['price'] = price;
    data['netPrice'] = netPrice;
    data['currency'] = currency;
    if (taxes != null) {
      data['taxes'] = taxes!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class VehicleComponents {
  String? id;
  int? componentSortId;
  String? codeType;
  String? code;
  String? name;
  String? componentType;
  String? owner;
  PriceInformation? priceInformation;
  bool? standard;
  String? standardType;
  bool? selected;
  bool? fixed;
  bool? hidden;
  bool? pseudoCode;
  Links? lLinks;
  String? colorGroup;
  IncludedComponents? includedComponents;
  String? description;
  ComponentMultiDescriptions? componentMultiDescriptions;
  DescriptionMetaInformation? descriptionMetaInformation;
  LegalDescriptions? legalDescriptions;

  VehicleComponents(
      {this.id,
        this.componentSortId,
        this.codeType,
        this.code,
        this.name,
        this.componentType,
        this.owner,
        this.priceInformation,
        this.standard,
        this.standardType,
        this.selected,
        this.fixed,
        this.hidden,
        this.pseudoCode,
        this.lLinks,
        this.colorGroup,
        this.includedComponents,
        this.description,
        this.componentMultiDescriptions,
        this.descriptionMetaInformation,
        this.legalDescriptions});

  VehicleComponents.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    componentSortId = json['componentSortId'];
    codeType = json['codeType'];
    code = json['code'];
    name = json['name'];
    componentType = json['componentType'];
    owner = json['owner'];
    priceInformation = json['priceInformation'] != null
        ? PriceInformation.fromJson(json['priceInformation'])
        : null;
    standard = json['standard'];
    standardType = json['standardType'];
    selected = json['selected'];
    fixed = json['fixed'];
    hidden = json['hidden'];
    pseudoCode = json['pseudoCode'];
    lLinks = json['_links'] != null ? Links.fromJson(json['_links']) : null;
    colorGroup = json['colorGroup'];
    includedComponents = json['includedComponents'] != null
        ? IncludedComponents.fromJson(json['includedComponents'])
        : null;
    description = json['description'];
    componentMultiDescriptions = json['componentMultiDescriptions'] != null
        ? ComponentMultiDescriptions.fromJson(
        json['componentMultiDescriptions'])
        : null;
    descriptionMetaInformation = json['descriptionMetaInformation'] != null
        ? DescriptionMetaInformation.fromJson(
        json['descriptionMetaInformation'])
        : null;
    legalDescriptions = json['legalDescriptions'] != null
        ? LegalDescriptions.fromJson(json['legalDescriptions'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = this.id;
    data['componentSortId'] = this.componentSortId;
    data['codeType'] = this.codeType;
    data['code'] = this.code;
    data['name'] = this.name;
    data['componentType'] = this.componentType;
    data['owner'] = this.owner;
    if (this.priceInformation != null) {
      data['priceInformation'] = this.priceInformation!.toJson();
    }
    data['standard'] = this.standard;
    data['standardType'] = this.standardType;
    data['selected'] = this.selected;
    data['fixed'] = this.fixed;
    data['hidden'] = this.hidden;
    data['pseudoCode'] = this.pseudoCode;
    if (this.lLinks != null) {
      data['_links'] = this.lLinks!.toJson();
    }
    data['colorGroup'] = this.colorGroup;
    if (this.includedComponents != null) {
      data['includedComponents'] = this.includedComponents!.toJson();
    }
    data['description'] = this.description;
    if (this.componentMultiDescriptions != null) {
      data['componentMultiDescriptions'] =
          this.componentMultiDescriptions!.toJson();
    }
    if (this.descriptionMetaInformation != null) {
      data['descriptionMetaInformation'] =
          this.descriptionMetaInformation!.toJson();
    }
    if (this.legalDescriptions != null) {
      data['legalDescriptions'] = this.legalDescriptions!.toJson();
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

class Links {
  String? images;

  Links({this.images});

  Links.fromJson(Map<String, dynamic> json) {
    images = json['images'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['images'] = images;
    return data;
  }
}

class IncludedComponents {
  VehicleComponents? vehicleComponents;
  List<SA772>? componentCategories;

  IncludedComponents({this.vehicleComponents, this.componentCategories});

  IncludedComponents.fromJson(Map<String, dynamic> json) {
    vehicleComponents = json['vehicleComponents'] != null
        ? VehicleComponents.fromJson(json['vehicleComponents'])
        : null;
    if (json['componentCategories'] != null) {
      componentCategories = <SA772>[];
      json['componentCategories'].forEach((v) {
        componentCategories!.add(SA772.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (vehicleComponents != null) {
      data['vehicleComponents'] = vehicleComponents!.toJson();
    }
    if (componentCategories != null) {
      data['componentCategories'] =
          componentCategories!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}


class SA772 {
  String? id;
  int? componentSortId;
  String? codeType;
  String? code;
  String? name;
  String? componentType;
  String? owner;
  PriceInformation? priceInformation;
  bool? standard;
  String? standardType;
  bool? selected;
  bool? fixed;
  bool? hidden;
  bool? pseudoCode;

  SA772(
      {this.id,
        this.componentSortId,
        this.codeType,
        this.code,
        this.name,
        this.componentType,
        this.owner,
        this.priceInformation,
        this.standard,
        this.standardType,
        this.selected,
        this.fixed,
        this.hidden,
        this.pseudoCode});

  SA772.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    componentSortId = json['componentSortId'];
    codeType = json['codeType'];
    code = json['code'];
    name = json['name'];
    componentType = json['componentType'];
    owner = json['owner'];
    priceInformation = json['priceInformation'] != null
        ? PriceInformation.fromJson(json['priceInformation'])
        : null;
    standard = json['standard'];
    standardType = json['standardType'];
    selected = json['selected'];
    fixed = json['fixed'];
    hidden = json['hidden'];
    pseudoCode = json['pseudoCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['componentSortId'] = componentSortId;
    data['codeType'] = codeType;
    data['code'] = code;
    data['name'] = name;
    data['componentType'] = componentType;
    data['owner'] = owner;
    if (priceInformation != null) {
      data['priceInformation'] = priceInformation!.toJson();
    }
    data['standard'] = standard;
    data['standardType'] = standardType;
    data['selected'] = selected;
    data['fixed'] = fixed;
    data['hidden'] = hidden;
    data['pseudoCode'] = pseudoCode;
    return data;
  }
}

class SA310 {
  String? id;
  int? componentSortId;
  String? codeType;
  String? code;
  String? name;
  String? description;
  String? componentType;
  String? owner;
  PriceInformation? priceInformation;
  bool? standard;
  String? standardType;
  bool? selected;
  bool? fixed;
  bool? hidden;
  bool? pseudoCode;
  ComponentMultiDescriptions? componentMultiDescriptions;
  DescriptionMetaInformation? descriptionMetaInformation;

  SA310(
      {this.id,
        this.componentSortId,
        this.codeType,
        this.code,
        this.name,
        this.description,
        this.componentType,
        this.owner,
        this.priceInformation,
        this.standard,
        this.standardType,
        this.selected,
        this.fixed,
        this.hidden,
        this.pseudoCode,
        this.componentMultiDescriptions,
        this.descriptionMetaInformation});

  SA310.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    componentSortId = json['componentSortId'];
    codeType = json['codeType'];
    code = json['code'];
    name = json['name'];
    description = json['description'];
    componentType = json['componentType'];
    owner = json['owner'];
    priceInformation = json['priceInformation'] != null
        ? PriceInformation.fromJson(json['priceInformation'])
        : null;
    standard = json['standard'];
    standardType = json['standardType'];
    selected = json['selected'];
    fixed = json['fixed'];
    hidden = json['hidden'];
    pseudoCode = json['pseudoCode'];
    componentMultiDescriptions = json['componentMultiDescriptions'] != null
        ? ComponentMultiDescriptions.fromJson(
        json['componentMultiDescriptions'])
        : null;
    descriptionMetaInformation = json['descriptionMetaInformation'] != null
        ? DescriptionMetaInformation.fromJson(
        json['descriptionMetaInformation'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['componentSortId'] = componentSortId;
    data['codeType'] = codeType;
    data['code'] = code;
    data['name'] = name;
    data['description'] = description;
    data['componentType'] = componentType;
    data['owner'] = owner;
    if (priceInformation != null) {
      data['priceInformation'] = priceInformation!.toJson();
    }
    data['standard'] = standard;
    data['standardType'] = standardType;
    data['selected'] = selected;
    data['fixed'] = fixed;
    data['hidden'] = hidden;
    data['pseudoCode'] = pseudoCode;
    if (componentMultiDescriptions != null) {
      data['componentMultiDescriptions'] =
          componentMultiDescriptions!.toJson();
    }
    if (descriptionMetaInformation != null) {
      data['descriptionMetaInformation'] =
          descriptionMetaInformation!.toJson();
    }
    return data;
  }
}

class ComponentMultiDescriptions {
  String? coreArgument;

  ComponentMultiDescriptions({this.coreArgument});

  ComponentMultiDescriptions.fromJson(Map<String, dynamic> json) {
    coreArgument = json['coreArgument'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['coreArgument'] = coreArgument;
    return data;
  }
}

class DescriptionMetaInformation {
  bool? mercedesMe;
  bool? highlight;

  DescriptionMetaInformation({this.mercedesMe, this.highlight});

  DescriptionMetaInformation.fromJson(Map<String, dynamic> json) {
    mercedesMe = json['mercedesMe'];
    highlight = json['highlight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['mercedesMe'] = mercedesMe;
    data['highlight'] = highlight;
    return data;
  }
}

class PCP49 {
  String? id;
  int? componentSortId;
  String? codeType;
  String? code;
  String? name;
  String? componentType;
  String? owner;
  PriceInformation? priceInformation;
  bool? standard;
  String? standardType;
  bool? selected;
  bool? fixed;
  bool? hidden;
  bool? pseudoCode;
  IncludedComponents? includedComponents;

  PCP49(
      {this.id,
        this.componentSortId,
        this.codeType,
        this.code,
        this.name,
        this.componentType,
        this.owner,
        this.priceInformation,
        this.standard,
        this.standardType,
        this.selected,
        this.fixed,
        this.hidden,
        this.pseudoCode,
        this.includedComponents});

  PCP49.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    componentSortId = json['componentSortId'];
    codeType = json['codeType'];
    code = json['code'];
    name = json['name'];
    componentType = json['componentType'];
    owner = json['owner'];
    priceInformation = json['priceInformation'] != null
        ? PriceInformation.fromJson(json['priceInformation'])
        : null;
    standard = json['standard'];
    standardType = json['standardType'];
    selected = json['selected'];
    fixed = json['fixed'];
    hidden = json['hidden'];
    pseudoCode = json['pseudoCode'];
    includedComponents = json['includedComponents'] != null
        ? IncludedComponents.fromJson(json['includedComponents'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['componentSortId'] = componentSortId;
    data['codeType'] = codeType;
    data['code'] = code;
    data['name'] = name;
    data['componentType'] = componentType;
    data['owner'] = owner;
    if (priceInformation != null) {
      data['priceInformation'] = priceInformation!.toJson();
    }
    data['standard'] = standard;
    data['standardType'] = standardType;
    data['selected'] = selected;
    data['fixed'] = fixed;
    data['hidden'] = hidden;
    data['pseudoCode'] = pseudoCode;
    if (includedComponents != null) {
      data['includedComponents'] = includedComponents!.toJson();
    }
    return data;
  }
}

class SA897 {
  String? id;
  int? componentSortId;
  String? codeType;
  String? code;
  String? name;
  String? description;
  LegalDescriptions? legalDescriptions;
  String? componentType;
  String? owner;
  PriceInformation? priceInformation;
  bool? standard;
  String? standardType;
  bool? selected;
  bool? fixed;
  bool? hidden;
  bool? pseudoCode;
  ComponentMultiDescriptions? componentMultiDescriptions;
  DescriptionMetaInformation? descriptionMetaInformation;

  SA897(
      {this.id,
        this.componentSortId,
        this.codeType,
        this.code,
        this.name,
        this.description,
        this.legalDescriptions,
        this.componentType,
        this.owner,
        this.priceInformation,
        this.standard,
        this.standardType,
        this.selected,
        this.fixed,
        this.hidden,
        this.pseudoCode,
        this.componentMultiDescriptions,
        this.descriptionMetaInformation});

  SA897.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    componentSortId = json['componentSortId'];
    codeType = json['codeType'];
    code = json['code'];
    name = json['name'];
    description = json['description'];
    legalDescriptions = json['legalDescriptions'] != null
        ? LegalDescriptions.fromJson(json['legalDescriptions'])
        : null;
    componentType = json['componentType'];
    owner = json['owner'];
    priceInformation = json['priceInformation'] != null
        ? PriceInformation.fromJson(json['priceInformation'])
        : null;
    standard = json['standard'];
    standardType = json['standardType'];
    selected = json['selected'];
    fixed = json['fixed'];
    hidden = json['hidden'];
    pseudoCode = json['pseudoCode'];
    componentMultiDescriptions = json['componentMultiDescriptions'] != null
        ? ComponentMultiDescriptions.fromJson(
        json['componentMultiDescriptions'])
        : null;
    descriptionMetaInformation = json['descriptionMetaInformation'] != null
        ? DescriptionMetaInformation.fromJson(
        json['descriptionMetaInformation'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['componentSortId'] = componentSortId;
    data['codeType'] = codeType;
    data['code'] = code;
    data['name'] = name;
    data['description'] = description;
    if (legalDescriptions != null) {
      data['legalDescriptions'] = legalDescriptions!.toJson();
    }
    data['componentType'] = componentType;
    data['owner'] = owner;
    if (priceInformation != null) {
      data['priceInformation'] = priceInformation!.toJson();
    }
    data['standard'] = standard;
    data['standardType'] = standardType;
    data['selected'] = selected;
    data['fixed'] = fixed;
    data['hidden'] = hidden;
    data['pseudoCode'] = pseudoCode;
    if (componentMultiDescriptions != null) {
      data['componentMultiDescriptions'] =
          componentMultiDescriptions!.toJson();
    }
    if (descriptionMetaInformation != null) {
      data['descriptionMetaInformation'] =
          descriptionMetaInformation!.toJson();
    }
    return data;
  }
}

class LegalDescriptions {
  String? optionalNameDescription;

  LegalDescriptions({this.optionalNameDescription});

  LegalDescriptions.fromJson(Map<String, dynamic> json) {
    optionalNameDescription = json['optionalNameDescription'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['optionalNameDescription'] = optionalNameDescription;
    return data;
  }
}

class Note1 {
  String? text1;

  Note1({this.text1});

  Note1.fromJson(Map<String, dynamic> json) {
    text1 = json['text1'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['text1'] = text1;
    return data;
  }
}

class ComponentCategories {
  String? categoryId;
  int? categorySortId;
  String? categoryName;
  String? cardinality;
  List<Subcategories>? subcategories;
  List<String>? componentIds;

  ComponentCategories(
      {this.categoryId,
        this.categorySortId,
        this.categoryName,
        this.cardinality,
        this.subcategories,
        this.componentIds});

  ComponentCategories.fromJson(Map<String, dynamic> json) {
    categoryId = json['categoryId'];
    categorySortId = json['categorySortId'];
    categoryName = json['categoryName'];
    cardinality = json['cardinality'];
    if (json['subcategories'] != null) {
      subcategories = <Subcategories>[];
      json['subcategories'].forEach((v) {
        subcategories!.add(Subcategories.fromJson(v));
      });
    }
    if (json['componentIds'] != null) {
      componentIds = <String>[];
      json['componentIds'].forEach((v) {
        componentIds!.add(v);
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['categoryId'] = categoryId;
    data['categorySortId'] = categorySortId;
    data['categoryName'] = categoryName;
    data['cardinality'] = cardinality;
    if (subcategories != null) {
      data['subcategories'] =
          subcategories!.map((v) => v.toJson()).toList();
    }
    if (componentIds != null) {
      data['componentIds'] = componentIds!.map((v) => v).toList();
    }
    return data;
  }
}

class Subcategories {
  String? categoryId;
  int? categorySortId;
  String? categoryName;
  String? cardinality;
  List<Subcategories>? subcategories;
  List<String>? componentIds;

  Subcategories(
      {this.categoryId,
        this.categorySortId,
        this.categoryName,
        this.cardinality,
        this.subcategories,
        this.componentIds});

  Subcategories.fromJson(Map<String, dynamic> json) {
    categoryId = json['categoryId'];
    categorySortId = json['categorySortId'];
    categoryName = json['categoryName'];
    cardinality = json['cardinality'];
    if (json['subcategories'] != null) {
      subcategories = <Subcategories>[];
      json['subcategories'].forEach((v) {
        subcategories!.add(Subcategories.fromJson(v));
      });
    }
    componentIds = json['componentIds'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['categoryId'] = categoryId;
    data['categorySortId'] = categorySortId;
    data['categoryName'] = categoryName;
    data['cardinality'] = cardinality;
    if (subcategories != null) {
      data['subcategories'] =
          subcategories!.map((v) => v.toJson()).toList();
    }
    data['componentIds'] = componentIds;
    return data;
  }
}


class TechnicalInformation {
  Engine? engine;
  Dimensions? dimensions;
  Transmission? transmission;
  FuelConsumptionCityMin? acceleration;
  EmissionCO2Min? topSpeed;
  int? doors;
  int? seats;
  EmissionCO2Min? actualMass;
  EmissionCO2Min? payload;
  EmissionCO2Min? reserveTankCapacity;
  EmissionCO2Min? capacityWithReserve;
  EmissionCO2Min? permanentRoofLoad;
  EmissionCO2Min? kerbWeight;
  String? dragCoefficient;
  String? activeDriveCycle;
  Wltp? wltp;
  LuggageSpace? luggageSpace;
  Weights? weights;
  Tyres? tyres;
  Axles? axles;

  TechnicalInformation(
      {this.engine,
        this.dimensions,
        this.transmission,
        this.acceleration,
        this.topSpeed,
        this.doors,
        this.seats,
        this.actualMass,
        this.payload,
        this.reserveTankCapacity,
        this.capacityWithReserve,
        this.permanentRoofLoad,
        this.kerbWeight,
        this.dragCoefficient,
        this.activeDriveCycle,
        this.wltp,
        this.luggageSpace,
        this.weights,
        this.tyres,
        this.axles});

  TechnicalInformation.fromJson(Map<String, dynamic> json) {
    engine =
    json['engine'] != null ? Engine.fromJson(json['engine']) : null;
    dimensions = json['dimensions'] != null
        ? Dimensions.fromJson(json['dimensions'])
        : null;
    transmission = json['transmission'] != null
        ? Transmission.fromJson(json['transmission'])
        : null;
    acceleration = json['acceleration'] != null
        ? FuelConsumptionCityMin.fromJson(json['acceleration'])
        : null;
    topSpeed = json['topSpeed'] != null
        ? EmissionCO2Min.fromJson(json['topSpeed'])
        : null;
    doors = json['doors'];
    seats = json['seats'];
    actualMass = json['actualMass'] != null
        ? EmissionCO2Min.fromJson(json['actualMass'])
        : null;
    payload = json['payload'] != null
        ? EmissionCO2Min.fromJson(json['payload'])
        : null;
    reserveTankCapacity = json['reserveTankCapacity'] != null
        ? EmissionCO2Min.fromJson(json['reserveTankCapacity'])
        : null;
    capacityWithReserve = json['capacityWithReserve'] != null
        ? EmissionCO2Min.fromJson(json['capacityWithReserve'])
        : null;
    permanentRoofLoad = json['permanentRoofLoad'] != null
        ? EmissionCO2Min.fromJson(json['permanentRoofLoad'])
        : null;
    kerbWeight = json['kerbWeight'] != null
        ? EmissionCO2Min.fromJson(json['kerbWeight'])
        : null;
    dragCoefficient = json['dragCoefficient'];
    activeDriveCycle = json['activeDriveCycle'];
    wltp = json['wltp'] != null ? Wltp.fromJson(json['wltp']) : null;
    luggageSpace = json['luggageSpace'] != null
        ? LuggageSpace.fromJson(json['luggageSpace'])
        : null;
    weights =
    json['weights'] != null ? Weights.fromJson(json['weights']) : null;
    tyres = json['tyres'] != null ? Tyres.fromJson(json['tyres']) : null;
    axles = json['axles'] != null ? Axles.fromJson(json['axles']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (engine != null) {
      data['engine'] = engine!.toJson();
    }
    if (dimensions != null) {
      data['dimensions'] = dimensions!.toJson();
    }
    if (transmission != null) {
      data['transmission'] = transmission!.toJson();
    }
    if (acceleration != null) {
      data['acceleration'] = acceleration!.toJson();
    }
    if (topSpeed != null) {
      data['topSpeed'] = topSpeed!.toJson();
    }
    data['doors'] = doors;
    data['seats'] = seats;
    if (actualMass != null) {
      data['actualMass'] = actualMass!.toJson();
    }
    if (payload != null) {
      data['payload'] = payload!.toJson();
    }
    if (reserveTankCapacity != null) {
      data['reserveTankCapacity'] = reserveTankCapacity!.toJson();
    }
    if (capacityWithReserve != null) {
      data['capacityWithReserve'] = capacityWithReserve!.toJson();
    }
    if (permanentRoofLoad != null) {
      data['permanentRoofLoad'] = permanentRoofLoad!.toJson();
    }
    if (kerbWeight != null) {
      data['kerbWeight'] = kerbWeight!.toJson();
    }
    data['dragCoefficient'] = dragCoefficient;
    data['activeDriveCycle'] = activeDriveCycle;
    if (wltp != null) {
      data['wltp'] = wltp!.toJson();
    }
    if (luggageSpace != null) {
      data['luggageSpace'] = luggageSpace!.toJson();
    }
    if (weights != null) {
      data['weights'] = weights!.toJson();
    }
    if (tyres != null) {
      data['tyres'] = tyres!.toJson();
    }
    if (axles != null) {
      data['axles'] = axles!.toJson();
    }
    return data;
  }
}

class Engine {
  String? fuelType;
  String? alternativeFuelType;
  String? engineConcept;
  String? driveConcept;
  FuelEconomy? fuelEconomy;
  EmissionCO2Min? powerHp;
  EmissionCO2Min? powerKw;
  EmissionCO2Min? powerHybridExtensionHp;
  EmissionCO2Min? powerHybridExtensionKw;
  String? cylinder;
  EmissionCO2Min? capacity;
  String? emissionStandard;
  EmissionCO2Min? engineTorque;
  EmissionCO2Min? nominalTorque;
  String? typeOfPropulsion;
  Propulsion? propulsion;
  EmissionCO2Min? compressionRatio;
  EmissionCO2Min? cylinderValves;
  EmissionCO2Min? cylinderArrangement;
  EmissionCO2Min? engineSpeedNominalOutputMin;
  EmissionCO2Min? engineSpeedNominalOutputMax;
  EmissionCO2Min? engineSpeedNominalTorqueMin;
  EmissionCO2Min? engineSpeedNominalTorqueMax;
  EmissionCO2Min? engineSpeedMax;

  Engine(
      {this.fuelType,
        this.alternativeFuelType,
        this.engineConcept,
        this.driveConcept,
        this.fuelEconomy,
        this.powerHp,
        this.powerKw,
        this.powerHybridExtensionHp,
        this.powerHybridExtensionKw,
        this.cylinder,
        this.capacity,
        this.emissionStandard,
        this.engineTorque,
        this.nominalTorque,
        this.typeOfPropulsion,
        this.propulsion,
        this.compressionRatio,
        this.cylinderValves,
        this.cylinderArrangement,
        this.engineSpeedNominalOutputMin,
        this.engineSpeedNominalOutputMax,
        this.engineSpeedNominalTorqueMin,
        this.engineSpeedNominalTorqueMax,
        this.engineSpeedMax});

  Engine.fromJson(Map<String, dynamic> json) {
    fuelType = json['fuelType'];
    alternativeFuelType = json['alternativeFuelType'];
    engineConcept = json['engineConcept'];
    driveConcept = json['driveConcept'];
    fuelEconomy = json['fuelEconomy'] != null
        ? FuelEconomy.fromJson(json['fuelEconomy'])
        : null;
    powerHp = json['powerHp'] != null
        ? EmissionCO2Min.fromJson(json['powerHp'])
        : null;
    powerKw = json['powerKw'] != null
        ? EmissionCO2Min.fromJson(json['powerKw'])
        : null;
    powerHybridExtensionHp = json['powerHybridExtensionHp'] != null
        ? EmissionCO2Min.fromJson(json['powerHybridExtensionHp'])
        : null;
    powerHybridExtensionKw = json['powerHybridExtensionKw'] != null
        ? EmissionCO2Min.fromJson(json['powerHybridExtensionKw'])
        : null;
    cylinder = json['cylinder'];
    capacity = json['capacity'] != null
        ? EmissionCO2Min.fromJson(json['capacity'])
        : null;
    emissionStandard = json['emissionStandard'];
    engineTorque = json['engineTorque'] != null
        ? EmissionCO2Min.fromJson(json['engineTorque'])
        : null;
    nominalTorque = json['nominalTorque'] != null
        ? EmissionCO2Min.fromJson(json['nominalTorque'])
        : null;
    typeOfPropulsion = json['typeOfPropulsion'];
    propulsion = json['propulsion'] != null
        ? Propulsion.fromJson(json['propulsion'])
        : null;
    compressionRatio = json['compressionRatio'] != null
        ? EmissionCO2Min.fromJson(json['compressionRatio'])
        : null;
    cylinderValves = json['cylinderValves'] != null
        ? EmissionCO2Min.fromJson(json['cylinderValves'])
        : null;
    cylinderArrangement = json['cylinderArrangement'] != null
        ? EmissionCO2Min.fromJson(json['cylinderArrangement'])
        : null;
    engineSpeedNominalOutputMin = json['engineSpeedNominalOutputMin'] != null
        ? EmissionCO2Min.fromJson(json['engineSpeedNominalOutputMin'])
        : null;
    engineSpeedNominalOutputMax = json['engineSpeedNominalOutputMax'] != null
        ? EmissionCO2Min.fromJson(json['engineSpeedNominalOutputMax'])
        : null;
    engineSpeedNominalTorqueMin = json['engineSpeedNominalTorqueMin'] != null
        ? EmissionCO2Min.fromJson(json['engineSpeedNominalTorqueMin'])
        : null;
    engineSpeedNominalTorqueMax = json['engineSpeedNominalTorqueMax'] != null
        ? EmissionCO2Min.fromJson(json['engineSpeedNominalTorqueMax'])
        : null;
    engineSpeedMax = json['engineSpeedMax'] != null
        ? EmissionCO2Min.fromJson(json['engineSpeedMax'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['fuelType'] = fuelType;
    data['alternativeFuelType'] = alternativeFuelType;
    data['engineConcept'] = engineConcept;
    data['driveConcept'] = driveConcept;
    if (fuelEconomy != null) {
      data['fuelEconomy'] = fuelEconomy!.toJson();
    }
    if (powerHp != null) {
      data['powerHp'] = powerHp!.toJson();
    }
    if (powerKw != null) {
      data['powerKw'] = powerKw!.toJson();
    }
    if (powerHybridExtensionHp != null) {
      data['powerHybridExtensionHp'] = powerHybridExtensionHp!.toJson();
    }
    if (powerHybridExtensionKw != null) {
      data['powerHybridExtensionKw'] = powerHybridExtensionKw!.toJson();
    }
    data['cylinder'] = cylinder;
    if (capacity != null) {
      data['capacity'] = capacity!.toJson();
    }
    data['emissionStandard'] = emissionStandard;
    if (engineTorque != null) {
      data['engineTorque'] = engineTorque!.toJson();
    }
    if (nominalTorque != null) {
      data['nominalTorque'] = nominalTorque!.toJson();
    }
    data['typeOfPropulsion'] = typeOfPropulsion;
    if (propulsion != null) {
      data['propulsion'] = propulsion!.toJson();
    }
    if (compressionRatio != null) {
      data['compressionRatio'] = compressionRatio!.toJson();
    }
    if (cylinderValves != null) {
      data['cylinderValves'] = cylinderValves!.toJson();
    }
    if (cylinderArrangement != null) {
      data['cylinderArrangement'] = cylinderArrangement!.toJson();
    }
    if (engineSpeedNominalOutputMin != null) {
      data['engineSpeedNominalOutputMin'] =
          engineSpeedNominalOutputMin!.toJson();
    }
    if (engineSpeedNominalOutputMax != null) {
      data['engineSpeedNominalOutputMax'] =
          engineSpeedNominalOutputMax!.toJson();
    }
    if (engineSpeedNominalTorqueMin != null) {
      data['engineSpeedNominalTorqueMin'] =
          engineSpeedNominalTorqueMin!.toJson();
    }
    if (engineSpeedNominalTorqueMax != null) {
      data['engineSpeedNominalTorqueMax'] =
          engineSpeedNominalTorqueMax!.toJson();
    }
    if (engineSpeedMax != null) {
      data['engineSpeedMax'] = engineSpeedMax!.toJson();
    }
    return data;
  }
}

class FuelEconomy {
  FuelConsumptionCityMin? fuelConsumptionCityMin;
  FuelConsumptionCityMin? fuelConsumptionCityMax;
  FuelConsumptionCityMin? fuelConsumptionOverlandMin;
  FuelConsumptionCityMin? fuelConsumptionOverlandMax;
  FuelConsumptionCityMin? fuelConsumptionCombinedMin;
  FuelConsumptionCityMin? fuelConsumptionCombinedMax;
  EmissionCO2Min? emissionCO2Min;
  EmissionCO2Min? emissionCO2Max;

  FuelEconomy(
      {this.fuelConsumptionCityMin,
        this.fuelConsumptionCityMax,
        this.fuelConsumptionOverlandMin,
        this.fuelConsumptionOverlandMax,
        this.fuelConsumptionCombinedMin,
        this.fuelConsumptionCombinedMax,
        this.emissionCO2Min,
        this.emissionCO2Max});

  FuelEconomy.fromJson(Map<String, dynamic> json) {
    fuelConsumptionCityMin = json['fuelConsumptionCityMin'] != null
        ? FuelConsumptionCityMin.fromJson(json['fuelConsumptionCityMin'])
        : null;
    fuelConsumptionCityMax = json['fuelConsumptionCityMax'] != null
        ? FuelConsumptionCityMin.fromJson(json['fuelConsumptionCityMax'])
        : null;
    fuelConsumptionOverlandMin = json['fuelConsumptionOverlandMin'] != null
        ? FuelConsumptionCityMin.fromJson(
        json['fuelConsumptionOverlandMin'])
        : null;
    fuelConsumptionOverlandMax = json['fuelConsumptionOverlandMax'] != null
        ? FuelConsumptionCityMin.fromJson(
        json['fuelConsumptionOverlandMax'])
        : null;
    fuelConsumptionCombinedMin = json['fuelConsumptionCombinedMin'] != null
        ? FuelConsumptionCityMin.fromJson(
        json['fuelConsumptionCombinedMin'])
        : null;
    fuelConsumptionCombinedMax = json['fuelConsumptionCombinedMax'] != null
        ? FuelConsumptionCityMin.fromJson(
        json['fuelConsumptionCombinedMax'])
        : null;
    emissionCO2Min = json['emissionCO2Min'] != null
        ? EmissionCO2Min.fromJson(json['emissionCO2Min'])
        : null;
    emissionCO2Max = json['emissionCO2Max'] != null
        ? EmissionCO2Min.fromJson(json['emissionCO2Max'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (fuelConsumptionCityMin != null) {
      data['fuelConsumptionCityMin'] = fuelConsumptionCityMin!.toJson();
    }
    if (fuelConsumptionCityMax != null) {
      data['fuelConsumptionCityMax'] = fuelConsumptionCityMax!.toJson();
    }
    if (fuelConsumptionOverlandMin != null) {
      data['fuelConsumptionOverlandMin'] =
          fuelConsumptionOverlandMin!.toJson();
    }
    if (fuelConsumptionOverlandMax != null) {
      data['fuelConsumptionOverlandMax'] =
          fuelConsumptionOverlandMax!.toJson();
    }
    if (fuelConsumptionCombinedMin != null) {
      data['fuelConsumptionCombinedMin'] =
          fuelConsumptionCombinedMin!.toJson();
    }
    if (fuelConsumptionCombinedMax != null) {
      data['fuelConsumptionCombinedMax'] =
          fuelConsumptionCombinedMax!.toJson();
    }
    if (emissionCO2Min != null) {
      data['emissionCO2Min'] = emissionCO2Min!.toJson();
    }
    if (emissionCO2Max != null) {
      data['emissionCO2Max'] = emissionCO2Max!.toJson();
    }
    return data;
  }
}

class FuelConsumptionCityMin {
  double? value;
  String? unit;

  FuelConsumptionCityMin({this.value, this.unit});

  FuelConsumptionCityMin.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['value'] = value;
    data['unit'] = unit;
    return data;
  }
}

class EmissionCO2Min {
  int? value;
  String? unit;

  EmissionCO2Min({this.value, this.unit});

  EmissionCO2Min.fromJson(Map<String, dynamic> json) {
    value = int.tryParse(json['value'].toString());
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['value'] = value;
    data['unit'] = unit;
    return data;
  }
}

class Propulsion {
  String? type;
  String? name;
  String? description;

  Propulsion({this.type, this.name, this.description});

  Propulsion.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    name = json['name'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['name'] = name;
    data['description'] = description;
    return data;
  }
}

class Dimensions {
  EmissionCO2Min? length;
  EmissionCO2Min? width;
  EmissionCO2Min? widthWithoutMirrors;
  EmissionCO2Min? height;
  FuelConsumptionCityMin? turnCircle;
  EmissionCO2Min? luggageSpaceFrontSeat;
  EmissionCO2Min? bootCapacityMax;
  EmissionCO2Min? bootCapacityMin;
  EmissionCO2Min? wheelBase;
  EmissionCO2Min? frontGauge;
  EmissionCO2Min? rearGauge;

  Dimensions(
      {this.length,
        this.width,
        this.widthWithoutMirrors,
        this.height,
        this.turnCircle,
        this.luggageSpaceFrontSeat,
        this.bootCapacityMax,
        this.bootCapacityMin,
        this.wheelBase,
        this.frontGauge,
        this.rearGauge});

  Dimensions.fromJson(Map<String, dynamic> json) {
    length = json['length'] != null
        ? EmissionCO2Min.fromJson(json['length'])
        : null;
    width = json['width'] != null
        ? EmissionCO2Min.fromJson(json['width'])
        : null;
    widthWithoutMirrors = json['widthWithoutMirrors'] != null
        ? EmissionCO2Min.fromJson(json['widthWithoutMirrors'])
        : null;
    height = json['height'] != null
        ? EmissionCO2Min.fromJson(json['height'])
        : null;
    turnCircle = json['turnCircle'] != null
        ? FuelConsumptionCityMin.fromJson(json['turnCircle'])
        : null;
    luggageSpaceFrontSeat = json['luggageSpaceFrontSeat'] != null
        ? EmissionCO2Min.fromJson(json['luggageSpaceFrontSeat'])
        : null;
    bootCapacityMax = json['bootCapacityMax'] != null
        ? EmissionCO2Min.fromJson(json['bootCapacityMax'])
        : null;
    bootCapacityMin = json['bootCapacityMin'] != null
        ? EmissionCO2Min.fromJson(json['bootCapacityMin'])
        : null;
    wheelBase = json['wheelBase'] != null
        ? EmissionCO2Min.fromJson(json['wheelBase'])
        : null;
    frontGauge = json['frontGauge'] != null
        ? EmissionCO2Min.fromJson(json['frontGauge'])
        : null;
    rearGauge = json['rearGauge'] != null
        ? EmissionCO2Min.fromJson(json['rearGauge'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (length != null) {
      data['length'] = length!.toJson();
    }
    if (width != null) {
      data['width'] = width!.toJson();
    }
    if (widthWithoutMirrors != null) {
      data['widthWithoutMirrors'] = widthWithoutMirrors!.toJson();
    }
    if (height != null) {
      data['height'] = height!.toJson();
    }
    if (turnCircle != null) {
      data['turnCircle'] = turnCircle!.toJson();
    }
    if (luggageSpaceFrontSeat != null) {
      data['luggageSpaceFrontSeat'] = luggageSpaceFrontSeat!.toJson();
    }
    if (bootCapacityMax != null) {
      data['bootCapacityMax'] = bootCapacityMax!.toJson();
    }
    if (bootCapacityMin != null) {
      data['bootCapacityMin'] = bootCapacityMin!.toJson();
    }
    if (wheelBase != null) {
      data['wheelBase'] = wheelBase!.toJson();
    }
    if (frontGauge != null) {
      data['frontGauge'] = frontGauge!.toJson();
    }
    if (rearGauge != null) {
      data['rearGauge'] = rearGauge!.toJson();
    }
    return data;
  }
}

class Transmission {
  String? name;
  String? code;
  String? codeType;
  String? transmissionType;
  String? transmissionCategory;
  EmissionCO2Min? numberOfGears;

  Transmission(
      {this.name,
        this.code,
        this.codeType,
        this.transmissionType,
        this.transmissionCategory,
        this.numberOfGears});

  Transmission.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    code = json['code'];
    codeType = json['codeType'];
    transmissionType = json['transmissionType'];
    transmissionCategory = json['transmissionCategory'];
    numberOfGears = json['numberOfGears'] != null
        ? EmissionCO2Min.fromJson(json['numberOfGears'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['code'] = code;
    data['codeType'] = codeType;
    data['transmissionType'] = transmissionType;
    data['transmissionCategory'] = transmissionCategory;
    if (numberOfGears != null) {
      data['numberOfGears'] = numberOfGears!.toJson();
    }
    return data;
  }
}

class Wltp {
  Consumption? consumption;
  Consumption? emission;
  Certification? certification;

  Wltp({this.consumption, this.emission, this.certification});

  Wltp.fromJson(Map<String, dynamic> json) {
    consumption = json['consumption'] != null
        ? Consumption.fromJson(json['consumption'])
        : null;
    emission = json['emission'] != null
        ? Consumption.fromJson(json['emission'])
        : null;
    certification = json['certification'] != null
        ? Certification.fromJson(json['certification'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (consumption != null) {
      data['consumption'] = consumption!.toJson();
    }
    if (emission != null) {
      data['emission'] = emission!.toJson();
    }
    if (certification != null) {
      data['certification'] = certification!.toJson();
    }
    return data;
  }
}

class Consumption {
  Low? low;
  Low? medium;
  Low? high;
  Low? extraHigh;
  Low? total;

  Consumption({this.low, this.medium, this.high, this.extraHigh, this.total});

  Consumption.fromJson(Map<String, dynamic> json) {
    low = json['low'] != null ? Low.fromJson(json['low']) : null;
    medium = json['medium'] != null ? Low.fromJson(json['medium']) : null;
    high = json['high'] != null ? Low.fromJson(json['high']) : null;
    extraHigh =
    json['extraHigh'] != null ? Low.fromJson(json['extraHigh']) : null;
    total = json['total'] != null ? Low.fromJson(json['total']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (low != null) {
      data['low'] = low!.toJson();
    }
    if (medium != null) {
      data['medium'] = medium!.toJson();
    }
    if (high != null) {
      data['high'] = high!.toJson();
    }
    if (extraHigh != null) {
      data['extraHigh'] = extraHigh!.toJson();
    }
    if (total != null) {
      data['total'] = total!.toJson();
    }
    return data;
  }
}

class Low {
  PrimaryGear? primaryGear;

  Low({this.primaryGear});

  Low.fromJson(Map<String, dynamic> json) {
    primaryGear = json['primaryGear'] != null
        ? PrimaryGear.fromJson(json['primaryGear'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (primaryGear != null) {
      data['primaryGear'] = primaryGear!.toJson();
    }
    return data;
  }
}

class PrimaryGear {
  EmissionCO2Min? individual;
  EmissionCO2Min? min;
  EmissionCO2Min? max;

  PrimaryGear({this.individual, this.min, this.max});

  PrimaryGear.fromJson(Map<String, dynamic> json) {
    individual = json['individual'] != null
        ? EmissionCO2Min.fromJson(json['individual'])
        : null;
    min = json['min'] != null ? EmissionCO2Min.fromJson(json['min']) : null;
    max = json['max'] != null ? EmissionCO2Min.fromJson(json['max']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (individual != null) {
      data['individual'] = individual!.toJson();
    }
    if (min != null) {
      data['min'] = min!.toJson();
    }
    if (max != null) {
      data['max'] = max!.toJson();
    }
    return data;
  }
}

class Certification {
  PrimaryGear? hydrocarbons;
  PrimaryGear? nitrogenOxides;
  PrimaryGear? nonMethaneHydrocarbons;
  PrimaryGear? particulateEmission;
  PrimaryGear? particulateNumber;
  PrimaryGear? totalHydrocarbons;
  PrimaryGear? totalHydrocarbonsNitrogenOxides;

  Certification(
      {this.hydrocarbons,
        this.nitrogenOxides,
        this.nonMethaneHydrocarbons,
        this.particulateEmission,
        this.particulateNumber,
        this.totalHydrocarbons,
        this.totalHydrocarbonsNitrogenOxides});

  Certification.fromJson(Map<String, dynamic> json) {
    hydrocarbons = json['hydrocarbons'] != null
        ? PrimaryGear.fromJson(json['hydrocarbons'])
        : null;
    nitrogenOxides = json['nitrogenOxides'] != null
        ? PrimaryGear.fromJson(json['nitrogenOxides'])
        : null;
    nonMethaneHydrocarbons = json['nonMethaneHydrocarbons'] != null
        ? PrimaryGear.fromJson(json['nonMethaneHydrocarbons'])
        : null;
    particulateEmission = json['particulateEmission'] != null
        ? PrimaryGear.fromJson(json['particulateEmission'])
        : null;
    particulateNumber = json['particulateNumber'] != null
        ? PrimaryGear.fromJson(json['particulateNumber'])
        : null;
    totalHydrocarbons = json['totalHydrocarbons'] != null
        ? PrimaryGear.fromJson(json['totalHydrocarbons'])
        : null;
    totalHydrocarbonsNitrogenOxides =
    json['totalHydrocarbonsNitrogenOxides'] != null
        ? PrimaryGear.fromJson(json['totalHydrocarbonsNitrogenOxides'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (hydrocarbons != null) {
      data['hydrocarbons'] = hydrocarbons!.toJson();
    }
    if (nitrogenOxides != null) {
      data['nitrogenOxides'] = nitrogenOxides!.toJson();
    }
    if (nonMethaneHydrocarbons != null) {
      data['nonMethaneHydrocarbons'] = nonMethaneHydrocarbons!.toJson();
    }
    if (particulateEmission != null) {
      data['particulateEmission'] = particulateEmission!.toJson();
    }
    if (particulateNumber != null) {
      data['particulateNumber'] = particulateNumber!.toJson();
    }
    if (totalHydrocarbons != null) {
      data['totalHydrocarbons'] = totalHydrocarbons!.toJson();
    }
    if (totalHydrocarbonsNitrogenOxides != null) {
      data['totalHydrocarbonsNitrogenOxides'] =
          totalHydrocarbonsNitrogenOxides!.toJson();
    }
    return data;
  }
}

class LuggageSpace {
  EmissionCO2Min? luggageSpaceFrontSeat;

  LuggageSpace({this.luggageSpaceFrontSeat});

  LuggageSpace.fromJson(Map<String, dynamic> json) {
    luggageSpaceFrontSeat = json['luggageSpaceFrontSeat'] != null
        ? EmissionCO2Min.fromJson(json['luggageSpaceFrontSeat'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (luggageSpaceFrontSeat != null) {
      data['luggageSpaceFrontSeat'] = luggageSpaceFrontSeat!.toJson();
    }
    return data;
  }
}

class Weights {
  EmissionCO2Min? unloadedWeight;
  EmissionCO2Min? tareWeight;
  EmissionCO2Min? maximumWeight;
  EmissionCO2Min? maximumWeightRoof;
  EmissionCO2Min? maximumTrailingLoadWithBrakes;
  EmissionCO2Min? maximumTrailingLoadWithoutBrakes;
  EmissionCO2Min? permissibleDrawbarLoad;

  Weights(
      {this.unloadedWeight,
        this.tareWeight,
        this.maximumWeight,
        this.maximumWeightRoof,
        this.maximumTrailingLoadWithBrakes,
        this.maximumTrailingLoadWithoutBrakes,
        this.permissibleDrawbarLoad});

  Weights.fromJson(Map<String, dynamic> json) {
    unloadedWeight = json['unloadedWeight'] != null
        ? EmissionCO2Min.fromJson(json['unloadedWeight'])
        : null;
    tareWeight = json['tareWeight'] != null
        ? EmissionCO2Min.fromJson(json['tareWeight'])
        : null;
    maximumWeight = json['maximumWeight'] != null
        ? EmissionCO2Min.fromJson(json['maximumWeight'])
        : null;
    maximumWeightRoof = json['maximumWeightRoof'] != null
        ? EmissionCO2Min.fromJson(json['maximumWeightRoof'])
        : null;
    maximumTrailingLoadWithBrakes =
    json['maximumTrailingLoadWithBrakes'] != null
        ? EmissionCO2Min.fromJson(json['maximumTrailingLoadWithBrakes'])
        : null;
    maximumTrailingLoadWithoutBrakes =
    json['maximumTrailingLoadWithoutBrakes'] != null
        ? EmissionCO2Min.fromJson(
        json['maximumTrailingLoadWithoutBrakes'])
        : null;
    permissibleDrawbarLoad = json['permissibleDrawbarLoad'] != null
        ? EmissionCO2Min.fromJson(json['permissibleDrawbarLoad'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (unloadedWeight != null) {
      data['unloadedWeight'] = unloadedWeight!.toJson();
    }
    if (tareWeight != null) {
      data['tareWeight'] = tareWeight!.toJson();
    }
    if (maximumWeight != null) {
      data['maximumWeight'] = maximumWeight!.toJson();
    }
    if (maximumWeightRoof != null) {
      data['maximumWeightRoof'] = maximumWeightRoof!.toJson();
    }
    if (maximumTrailingLoadWithBrakes != null) {
      data['maximumTrailingLoadWithBrakes'] =
          maximumTrailingLoadWithBrakes!.toJson();
    }
    if (maximumTrailingLoadWithoutBrakes != null) {
      data['maximumTrailingLoadWithoutBrakes'] =
          maximumTrailingLoadWithoutBrakes!.toJson();
    }
    if (permissibleDrawbarLoad != null) {
      data['permissibleDrawbarLoad'] = permissibleDrawbarLoad!.toJson();
    }
    return data;
  }
}

class Tyres {
  String? frontTyres;
  String? backTyres;
  String? frontAxle;
  String? backAxle;
  String? frontBrakes;
  String? rearBrakes;
  String? frontSuspension;
  String? rearSuspension;

  Tyres(
      {this.frontTyres,
        this.backTyres,
        this.frontAxle,
        this.backAxle,
        this.frontBrakes,
        this.rearBrakes,
        this.frontSuspension,
        this.rearSuspension});

  Tyres.fromJson(Map<String, dynamic> json) {
    frontTyres = json['frontTyres'];
    backTyres = json['backTyres'];
    frontAxle = json['frontAxle'];
    backAxle = json['backAxle'];
    frontBrakes = json['frontBrakes'];
    rearBrakes = json['rearBrakes'];
    frontSuspension = json['frontSuspension'];
    rearSuspension = json['rearSuspension'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['frontTyres'] = frontTyres;
    data['backTyres'] = backTyres;
    data['frontAxle'] = frontAxle;
    data['backAxle'] = backAxle;
    data['frontBrakes'] = frontBrakes;
    data['rearBrakes'] = rearBrakes;
    data['frontSuspension'] = frontSuspension;
    data['rearSuspension'] = rearSuspension;
    return data;
  }
}

class Axles {
  EmissionCO2Min? axleLoadDistributionFront;
  EmissionCO2Min? axleLoadDistributionBack;

  Axles({this.axleLoadDistributionFront, this.axleLoadDistributionBack});

  Axles.fromJson(Map<String, dynamic> json) {
    axleLoadDistributionFront = json['axleLoadDistributionFront'] != null
        ? EmissionCO2Min.fromJson(json['axleLoadDistributionFront'])
        : null;
    axleLoadDistributionBack = json['axleLoadDistributionBack'] != null
        ? EmissionCO2Min.fromJson(json['axleLoadDistributionBack'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (axleLoadDistributionFront != null) {
      data['axleLoadDistributionFront'] =
          axleLoadDistributionFront!.toJson();
    }
    if (axleLoadDistributionBack != null) {
      data['axleLoadDistributionBack'] =
          axleLoadDistributionBack!.toJson();
    }
    return data;
  }
}

class InsuranceDetails {
  int? manufacturerKeyNumber;
  int? liabilityInsurance;
  int? partiallyComprehensiveInsurance;
  String? typeKeyNumber;
  int? comprehensiveInsurance;

  InsuranceDetails(
      {this.manufacturerKeyNumber,
        this.liabilityInsurance,
        this.partiallyComprehensiveInsurance,
        this.typeKeyNumber,
        this.comprehensiveInsurance});

  InsuranceDetails.fromJson(Map<String, dynamic> json) {
    manufacturerKeyNumber = json['manufacturerKeyNumber'];
    liabilityInsurance = json['liabilityInsurance'];
    partiallyComprehensiveInsurance = json['partiallyComprehensiveInsurance'];
    typeKeyNumber = json['typeKeyNumber'];
    comprehensiveInsurance = json['comprehensiveInsurance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['manufacturerKeyNumber'] = manufacturerKeyNumber;
    data['liabilityInsurance'] = liabilityInsurance;
    data['partiallyComprehensiveInsurance'] =
        partiallyComprehensiveInsurance;
    data['typeKeyNumber'] = typeKeyNumber;
    data['comprehensiveInsurance'] = comprehensiveInsurance;
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
