import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ukintensity_integration/src/factors/models.dart';

/// Carbon Intensity factors
class FactorsService {
  /// Get Carbon Intensity factors for each fuel type
  static Future<Factor> get() async {
    var res = await http
        .get(Uri.parse("https://api.carbonintensity.org.uk/intensity/factors"));
    return Factor.fromJson(jsonDecode(res.body));
  }
}
