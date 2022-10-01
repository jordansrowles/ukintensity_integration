import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ukintensity_integration/src/national_intensity/models.dart';

class NationalIntensityService
{
  Future<NationalIntensity> getCurrentHalfHour() async 
  {
    var res = await http.get(
      Uri.parse("https://api.carbonintensity.org.uk/intensity")
    );
    return NationalIntensity.fromJson(jsonDecode(res.body));
  }

  Future<NationalIntensity> getToday() async 
  {
    var res = await http.get(
      Uri.parse("https://api.carbonintensity.org.uk/intensity/date")
    );
    return NationalIntensity.fromJson(jsonDecode(res.body));
  }

  Future<NationalIntensity> getByDate(DateTime datetime) async 
  {
    var res = await http.get(
      Uri.parse("https://api.carbonintensity.org.uk/intensity/date/${datetime.year}-${datetime.month}-${datetime.day}")
    );
    return NationalIntensity.fromJson(jsonDecode(res.body));
  }
}