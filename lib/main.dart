import 'package:flutter/material.dart';
import 'package:flutter_quickstart/location_list.dart';
import 'package:flutter_quickstart/mock/mock_location.dart';
import 'package:flutter_quickstart/model/location.dart';

void main() {
  final List<Location> mockLocations = MockLocation.fetchAll();

  return runApp(MaterialApp(
      home: LocationList(mockLocations)
  ));
}
