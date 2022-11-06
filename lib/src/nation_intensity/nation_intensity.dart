import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;
import 'package:ukintensity_integration/src/nation_intensity/models.dart';

/// Used to get data from the states: england, wales, and scotland. Outcodes, ...
/// {@category Services}
class NationIntensityService {
  static Future<NationIntensity> england() async {
    var res = await http
        .get(Uri.parse("https://api.carbonintensity.org.uk/regional/england"));
    return NationIntensity.fromJson(jsonDecode(res.body));
  }

  static Future<NationIntensity> wales() async {
    var res = await http
        .get(Uri.parse("https://api.carbonintensity.org.uk/regional/wales"));
    return NationIntensity.fromJson(jsonDecode(res.body));
  }

  static Future<NationIntensity> scotland() async {
    var res = await http
        .get(Uri.parse("https://api.carbonintensity.org.uk/regional/scotland"));
    return NationIntensity.fromJson(jsonDecode(res.body));
  }

  static Future<NationIntensity> postcode(String postcode) async {
    RegExp test = RegExp(r'[A-Za-z]{1,2}[0-9Rr][0-9A-Za-z]?');
    RegExpMatch? match = test.firstMatch(postcode);
    postcode = match![0] ?? "";
    if (postcode.isEmpty) {
      throw Exception("Invalid Postcode (first half only)");
    }

    var res = await http.get(Uri.parse(
        "https://api.carbonintensity.org.uk/regional/postcode/$postcode"));
    return NationIntensity.fromJson(jsonDecode(res.body));
  }
}
