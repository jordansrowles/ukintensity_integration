import 'package:ukintensity_integration/src/national_intensity/models.dart';

class Statistic {
  List<StatisticData>? data;

  Statistic({this.data});

  Statistic.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <StatisticData>[];
      json['data'].forEach((v) {
        data!.add(new StatisticData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class StatisticData {
  String? from;
  String? to;
  /// Carbon Intensity statistics (max, average, min, index).
  Intensity? intensity;

  StatisticData({this.from, this.to, this.intensity});

  StatisticData.fromJson(Map<String, dynamic> json) {
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
      data['intensity'] = this.intensity!.toJson();
    }
    return data;
  }
}
