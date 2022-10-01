import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ukintensity_integration/src/generation_mix/models.dart';

class GenerationMixService
{
  Future<GenerationMix> get() async 
  {
    var res = await http.get(
      Uri.parse("https://api.carbonintensity.org.uk/generation")
    );
    return GenerationMix.fromJson(jsonDecode(res.body));
  }
}