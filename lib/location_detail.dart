
import 'package:flutter/material.dart';
import 'package:flutter_quickstart/model/location_fact.dart';

import 'model/Location.dart';

class LocationDetail extends StatelessWidget {
  final Location location;

  // Constructor
  LocationDetail(this.location);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(location.name)),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: _renderFacts(location),
        ),
    );
  }

  List<Widget> _renderFacts(Location location) {
    var listOfFacts = List<Widget>();

    for (LocationFact fact in location.facts) {
      listOfFacts.add(_sectionTitle(fact.title));
      listOfFacts.add(_sectionText(fact.text));
    }

    return listOfFacts;
  }

  Widget _sectionTitle(String title) {
    return Text(title);
  }

  Widget _sectionText(String text) {
    return Text(text);
  }
}
