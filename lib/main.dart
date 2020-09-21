import 'package:flutter/material.dart';
import 'package:flutter_quickstart/mock/mock_location.dart';
import 'package:flutter_quickstart/model/Location.dart';

import 'location_detail.dart';

void main() {
  final Location mockLocation = MockLocation.FetchAny();

  return runApp(MaterialApp(
      home: LocationDetail(mockLocation)
  ));
}
