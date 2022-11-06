import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ukintensity_integration/src/national_intensity/models.dart';

/// Get Carbon Intensity data
/// {@category Services}
class NationalIntensityService {
  /// Get Carbon Intensity data for current half hour (specific item from getToday())
  static Future<NationalIntensity> getCurrentHalfHour() async {
    var res = await http
        .get(Uri.parse("https://api.carbonintensity.org.uk/intensity"));
    return NationalIntensity.fromJson(jsonDecode(res.body));
  }

  /// Get Carbon Intensity data for today. All times provided in UTC (+00:00).
  static Future<NationalIntensity> getToday() async {
    var res = await http
        .get(Uri.parse("https://api.carbonintensity.org.uk/intensity/date"));
    return NationalIntensity.fromJson(jsonDecode(res.body));
  }

  /// Get Carbon Intensity data for a specific date. All times provided in UTC (+00:00).
  static Future<NationalIntensity> getByDate(DateTime datetime) async {
    var res = await http.get(Uri.parse(
        "https://api.carbonintensity.org.uk/intensity/date/${datetime.year}-${datetime.month}-${datetime.day}"));
    return NationalIntensity.fromJson(jsonDecode(res.body));
  }

  /// Get Carbon Intensity data between the {from} datetime specified and 24hrs before. All times provided in UTC (+00:00).
  static Future<NationalIntensity> getPast24Hr(DateTime datetime) async {
    String properDate = datetime.toIso8601String();
    var res = await http.get(Uri.parse(
        "https://api.carbonintensity.org.uk/intensity/$properDate}/pt24h"));
    return NationalIntensity.fromJson(jsonDecode(res.body));
  }
}
