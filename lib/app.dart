import 'package:flutter/material.dart';
import 'package:flutter_quickstart/location_list.dart';
import 'package:flutter_quickstart/mock/mock_location.dart';
import 'package:flutter_quickstart/model/location.dart';

class App  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final List<Location> mockLocations = MockLocation.fetchAll();
    return MaterialApp(home: LocationList(mockLocations));
  }

}