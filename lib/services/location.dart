import 'package:geolocator/geolocator.dart';

class Location {
  double lat;
  double long;

  Future<void> getLocation() async {
    try {
      var pos = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
      lat = pos.latitude;
      long = pos.longitude;
    } catch (e) {
      print(e);
    }
  }
}
