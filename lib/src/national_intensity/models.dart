class NationalIntensity {
  List<IntensityData>? data;

  NationalIntensity({this.data});

  NationalIntensity.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <IntensityData>[];
      json['data'].forEach((v) {
        data?.add(IntensityData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class IntensityData {
  String? from;
  String? to;
  Intensity? intensity;

  IntensityData({this.from, this.to, this.intensity});

  IntensityData.fromJson(Map<String, dynamic> json) {
    from = json['from'];
    to = json['to'];
    intensity = json['intensity'] != null
        ? new Intensity.fromJson(json['intensity'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['from'] = this.from;
    data['to'] = this.to;
    if (this.intensity != null) {
      data['intensity'] = this.intensity?.toJson();
    }
    return data;
  }
}

class Intensity {
  int? forecast;
  int? actual;
  String? index;

  Intensity({this.forecast, this.actual, this.index});

  Intensity.fromJson(Map<String, dynamic> json) {
    forecast = json['forecast'];
    actual = json['actual'];
    index = json['index'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['forecast'] = this.forecast;
    data['actual'] = this.actual;
    data['index'] = this.index;
    return data;
  }
}
