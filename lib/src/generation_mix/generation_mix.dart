import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ukintensity_integration/src/generation_mix/models.dart';

/// Get generation mix
class GenerationMixService {
  /// Get generation mix for current half hour
  static Future<GenerationMix> get() async {
    var res = await http
        .get(Uri.parse("https://api.carbonintensity.org.uk/generation"));
    return GenerationMix.fromJson(jsonDecode(res.body));
  }

  static Future<GenerationMixList> getPast24Hr(String isoDate) async {
    var res = await http.get(Uri.parse(
        "https://api.carbonintensity.org.uk/generation/$isoDate/pt24h"));
    return GenerationMixList.fromJson(jsonDecode(res.body));
  }

  static Future<GenerationMixList> getRange(
      String isoStart, String isoEnd) async {
    var res = await http.get(Uri.parse(
        "https://api.carbonintensity.org.uk/generation/$isoStart/$isoEnd"));
    return GenerationMixList.fromJson(jsonDecode(res.body));
  }
}
