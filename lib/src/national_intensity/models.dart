import 'package:ukintensity_integration/src/generation_mix/models.dart';

/// Get Carbon Intensity at National level
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
    final Map<String, dynamic> data = <String, dynamic>{};
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
  /// used by NationIntensityRegion
  List<GenerationMixItem>? generationmix;

  IntensityData({this.from, this.to, this.intensity, this.generationmix});

  IntensityData.fromJson(Map<String, dynamic> json) {
    from = json['from'];
    to = json['to'];
    intensity = json['intensity'] != null
        ? Intensity.fromJson(json['intensity'])
        : null;
    if (json['generationmix'] != null) {
      generationmix = <GenerationMixItem>[];
      json['generationmix'].forEach((v) {
        generationmix!.add(GenerationMixItem.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['from'] = from;
    data['to'] = to;
    if (intensity != null) {
      data['intensity'] = intensity?.toJson();
    }
    if (generationmix != null) {
      data['generationmix'] =
          generationmix!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

/// Carbon Intensity data (forecast, actual, index).
class Intensity {
  /// The forecast Carbon Intensity for the half hour in units gCO2/kWh.
  int? forecast;
  /// The estimated actual Carbon Intensity for the half hour in units gCO2/kWh.
  int? actual;
  /// The average Carbon Intensity for the datetime range in units gCO2/kWh. Future periods use forecast data. Past data uses actual data.
  int? average;
  /// The index is a measure of the Carbon Intensity represented on a scale between 'very low', 'low', 'moderate', 'high', 'very high'.
  String? index;
  /// The minimum Carbon Intensity for the datetime range in units gCO2/kWh. Future periods use forecast data. Past data uses actual data.
  int? min;
  /// The maximum Carbon Intensity for the datetime range in units gCO2/kWh. Future periods use forecast data. Past data uses actual data.
  int? max;

  Intensity({this.forecast = 0, this.actual = 0, this.index});

  Intensity.fromJson(Map<String, dynamic> json) {
    forecast = json['forecast'];
    actual = json['actual'];
    average = json['average'];
    min = json['min'];
    max = json['max'];
    index = json['index'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['forecast'] = forecast;
    data['actual'] = actual;
    data['index'] = index;
    data['average'] = average;
    data['max'] = max;
    data["min"] = min;
    return data;
  }
}
