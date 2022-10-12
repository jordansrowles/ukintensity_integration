/// Generation mix
class GenerationMix {
  GenerationMixData? data;

  GenerationMix({this.data});

  GenerationMix.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null
        ? new GenerationMixData.fromJson(json['data'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data?.toJson();
    }
    return data;
  }
}

class GenerationMixData {
  String? from;
  String? to;
  List<GenerationmixItem>? generationmix;

  GenerationMixData({this.from, this.to, this.generationmix});

  GenerationMixData.fromJson(Map<String, dynamic> json) {
    from = json['from'];
    to = json['to'];
    if (json['generationmix'] != null) {
      generationmix = <GenerationmixItem>[];
      json['generationmix'].forEach((v) {
        generationmix?.add(new GenerationmixItem.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['from'] = this.from;
    data['to'] = this.to;
    if (this.generationmix != null) {
      data['generationmix'] =
          this.generationmix?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class GenerationmixItem {
  String? fuel;
  double? perc;

  GenerationmixItem({this.fuel, this.perc});

  GenerationmixItem.fromJson(Map<String, dynamic> json) {
    fuel = json['fuel'];
    perc = json['perc'].toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fuel'] = this.fuel;
    data['perc'] = this.perc;
    return data;
  }
}
