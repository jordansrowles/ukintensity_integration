import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ukintensity_integration/src/statistics/models.dart';
import 'package:intl/intl.dart';

/// {@category Services}
class NationalStatisticsService {
  static Future<Statistic> range(String start, String end) async {
    //String s = DateFormat("YYYY-MM-DD HH:MM").format(start); //2017-09-18T12:00Z
    //String e = DateFormat("YYYY-MM-DD HH:MM").format(end);
    var res = await http.get(Uri.parse(
        "https://api.carbonintensity.org.uk/intensity/stats/$start/$end"));
    return Statistic.fromJson(jsonDecode(res.body));
  }

  static Future<Statistic> rangeDT(DateTime start, DateTime end) async {
    var res = await http.get(Uri.parse(
        "https://api.carbonintensity.org.uk/intensity/stats/${start.toIso8601String()}/${end.toIso8601String()}"));
    return Statistic.fromJson(jsonDecode(res.body));
  }
}
