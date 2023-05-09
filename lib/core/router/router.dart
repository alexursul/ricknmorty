import 'package:beamer/beamer.dart';
import 'locations/character_location.dart';

class AppRouter {
  late final routerDelegate = BeamerDelegate(
    locationBuilder: BeamerLocationBuilder(
      beamLocations: [
        CharacterLocation(),
      ],
    ),
  );

  AppRouter();
}

