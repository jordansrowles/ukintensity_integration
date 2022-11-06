import 'package:ukintensity_integration/src/generation_mix/models.dart';
import 'package:ukintensity_integration/src/national_intensity/models.dart';

class NationIntensity {
  List<NationIntensityRegion>? data;

  NationIntensity({this.data});

  NationIntensity.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <NationIntensityRegion>[];
      json['data'].forEach((v) {
        data!.add(new NationIntensityRegion.fromJson(v));
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

class NationIntensityRegion {
  int? regionid;
  String? dnoregion;
  String? shortname;
  String? postcode;
  List<IntensityData>? data;

  NationIntensityRegion(
      {this.regionid, this.dnoregion, this.shortname, this.data});

  NationIntensityRegion.fromJson(Map<String, dynamic> json) {
    regionid = json['regionid'];
    dnoregion = json['dnoregion'];
    shortname = json['shortname'];
    postcode = json['postcode'];
    if (json['data'] != null) {
      data = <IntensityData>[];
      json['data'].forEach((v) {
        data!.add(new IntensityData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['regionid'] = this.regionid;
    data['dnoregion'] = this.dnoregion;
    data['postcode'] = this.postcode;
    data['shortname'] = this.shortname;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}