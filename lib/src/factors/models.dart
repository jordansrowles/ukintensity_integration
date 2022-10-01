class Factor {
  List<FactorData>? data;

  Factor({this.data});

  Factor.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <FactorData>[];
      json['data'].forEach((v) {
        data?.add(new FactorData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FactorData {
  int? biomass;
  int? coal;
  int? dutchImports;
  int? frenchImports;
  int? gasCombinedCycle;
  int? gasOpenCycle;
  int? hydro;
  int? irishImports;
  int? nuclear;
  int? oil;
  int? other;
  int? pumpedStorage;
  int? solar;
  int? wind;

  FactorData(
      {this.biomass,
      this.coal,
      this.dutchImports,
      this.frenchImports,
      this.gasCombinedCycle,
      this.gasOpenCycle,
      this.hydro,
      this.irishImports,
      this.nuclear,
      this.oil,
      this.other,
      this.pumpedStorage,
      this.solar,
      this.wind});

  FactorData.fromJson(Map<String, dynamic> json) {
    biomass = json['Biomass'];
    coal = json['Coal'];
    dutchImports = json['Dutch Imports'];
    frenchImports = json['French Imports'];
    gasCombinedCycle = json['Gas (Combined Cycle)'];
    gasOpenCycle = json['Gas (Open Cycle)'];
    hydro = json['Hydro'];
    irishImports = json['Irish Imports'];
    nuclear = json['Nuclear'];
    oil = json['Oil'];
    other = json['Other'];
    pumpedStorage = json['Pumped Storage'];
    solar = json['Solar'];
    wind = json['Wind'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Biomass'] = this.biomass;
    data['Coal'] = this.coal;
    data['Dutch Imports'] = this.dutchImports;
    data['French Imports'] = this.frenchImports;
    data['Gas (Combined Cycle)'] = this.gasCombinedCycle;
    data['Gas (Open Cycle)'] = this.gasOpenCycle;
    data['Hydro'] = this.hydro;
    data['Irish Imports'] = this.irishImports;
    data['Nuclear'] = this.nuclear;
    data['Oil'] = this.oil;
    data['Other'] = this.other;
    data['Pumped Storage'] = this.pumpedStorage;
    data['Solar'] = this.solar;
    data['Wind'] = this.wind;
    return data;
  }
}
