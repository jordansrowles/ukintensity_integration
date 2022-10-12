import 'package:ukintensity_integration/ukintensity_integration.dart';

void main() async {
  NationalIntensityService service = new NationalIntensityService();
  var info = await service.getToday();
}
