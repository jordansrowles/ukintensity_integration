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

class GenerationMixList {
  List<GenerationMixData>? data;

  GenerationMixList({this.data});

  GenerationMixList.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <GenerationMixData>[];
      json['data'].forEach((v) {
        data!.add(new GenerationMixData.fromJson(v));
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

class GenerationMixData {
  String? from;
  String? to;
  List<GenerationMixItem>? generationmix;

  GenerationMixData({this.from, this.to, this.generationmix});

  GenerationMixData.fromJson(Map<String, dynamic> json) {
    from = json['from'];
    to = json['to'];
    if (json['generationmix'] != null) {
      generationmix = <GenerationMixItem>[];
      json['generationmix'].forEach((v) {
        generationmix?.add(new GenerationMixItem.fromJson(v));
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

class GenerationMixItem {
  String? fuel;
  double? perc;

  GenerationMixItem({this.fuel, this.perc});

  GenerationMixItem.fromJson(Map<String, dynamic> json) {
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
