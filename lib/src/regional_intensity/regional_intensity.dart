import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ukintensity_integration/src/regional_intensity/models.dart';


/// {@category Services}
class RegionalIntensityService {
  static Future<RegionalIntensity> all() async {
    var res = await http
        .get(Uri.parse("https://api.carbonintensity.org.uk/regional"));
    return RegionalIntensity.fromJson(jsonDecode(res.body));
  }
}
