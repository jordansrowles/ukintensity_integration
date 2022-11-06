import 'package:ukintensity_integration/src/generation_mix/models.dart';
import 'package:ukintensity_integration/src/national_intensity/models.dart';

class RegionalIntensity {
  List<RegionalIntensityData>? data;

  RegionalIntensity({this.data});

  RegionalIntensity.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <RegionalIntensityData>[];
      json['data'].forEach((v) {
        data!.add(new RegionalIntensityData.fromJson(v));
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

class RegionalIntensityData {
  String? from;
  String? to;
  List<Regions>? regions;

  RegionalIntensityData({this.from, this.to, this.regions});

  RegionalIntensityData.fromJson(Map<String, dynamic> json) {
    from = json['from'];
    to = json['to'];
    if (json['regions'] != null) {
      regions = <Regions>[];
      json['regions'].forEach((v) {
        regions!.add(new Regions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['from'] = this.from;
    data['to'] = this.to;
    if (this.regions != null) {
      data['regions'] = this.regions!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Regions {
  int? regionid;
  String? dnoregion;
  String? shortname;
  Intensity? intensity;
  List<GenerationMixItem>? generationmix;

  Regions(
      {this.regionid,
      this.dnoregion,
      this.shortname,
      this.intensity,
      this.generationmix});

  Regions.fromJson(Map<String, dynamic> json) {
    regionid = json['regionid'];
    dnoregion = json['dnoregion'];
    shortname = json['shortname'];
    intensity = json['intensity'] != null
        ? new Intensity.fromJson(json['intensity'])
        : null;
    if (json['generationmix'] != null) {
      generationmix = <GenerationMixItem>[];
      json['generationmix'].forEach((v) {
        generationmix!.add(new GenerationMixItem.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['regionid'] = this.regionid;
    data['dnoregion'] = this.dnoregion;
    data['shortname'] = this.shortname;
    if (this.intensity != null) {
      data['intensity'] = this.intensity!.toJson();
    }
    if (this.generationmix != null) {
      data['generationmix'] =
          this.generationmix!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
