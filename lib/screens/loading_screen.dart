import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  Location location = Location();
  Networking networking = Networking();

  @override
  void initState() {
    super.initState();
    location.getLocation();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () async {
            //Get the current location
            print('${location.lat} and ${location.long}');
            var resp = await networking.getWeatherData(location.lat.toString(), location.long.toString());
            print(resp['weather'][0]['main']);
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
