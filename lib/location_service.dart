import 'package:permission_handler/permission_handler.dart';
import 'package:geolocator/geolocator.dart';

class LocationService {
  Future<bool> requestLocationPermission() async {
    var status = await Permission.location.status;

    if (!status.isGranted) {
      var result = await Permission.location.request();
      if (result.isGranted) {
        return true; 
      } else {
        return false; 
      }
    } else {
      return true; 
    }
  }

  Future<Position?> getCurrentLocation() async {
    bool permissionGranted = await requestLocationPermission();
    if (!permissionGranted) {
      return null; // Permission not granted
    }

    return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
  }
}
