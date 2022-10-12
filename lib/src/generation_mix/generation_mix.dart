import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:ukintensity_integration/src/generation_mix/models.dart';

/// Get generation mix
class GenerationMixService {
  /// Get generation mix for current half hour
  Future<GenerationMix> get() async {
    var res = await http
        .get(Uri.parse("https://api.carbonintensity.org.uk/generation"));
    return GenerationMix.fromJson(jsonDecode(res.body));
  }
}
