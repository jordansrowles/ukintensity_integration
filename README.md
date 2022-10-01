

## ukintensity_integration

I originally created a .NET Nuget package called (Carbon Intensity UK)[https://github.com/jordansrowles/CarbonIntensityUK], and decided to recreate the package for Dart for my first library on pub.dev


## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

```dart
import 'package:ukintensity_integration/ukintensity_integration.dart';

NationalIntensityService service = new NationalIntensityService();
var info = await service.getToday();
```

## Additional information

__From the .NET Readme__

### UK Carbon Intensity
.NET wrapper around the British Carbon Intensity API provided by the National Grid. Provides real-time and calculated (+48 hour forecast) of CO2 carbon emissions relating to electricity generation.

> The Carbon Intensity API uses state-of-the-art Machine Learning and sophisticated power system modelling to forecast the carbon intensity and generation mix 96+ hours ahead for each region in Great Britain. 
>Our OpenAPI allows consumers and smart devices to schedule and minimise CO2 emissions at a local level

[Website](https://carbonintensity.org.uk/)
 | [Docs](https://carbon-intensity.github.io/api-definitions/)
 | [Endpoint](https://api.carbonintensity.org.uk/)