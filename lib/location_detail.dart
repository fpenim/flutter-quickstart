import 'package:flutter/material.dart';
import 'package:flutter_quickstart/mock/mock_location.dart';
import 'package:flutter_quickstart/model/location.dart';
import 'package:flutter_quickstart/model/location_fact.dart';
import 'package:flutter_quickstart/style/Styles.dart';

class LocationDetail extends StatefulWidget {
  final int locationId;

  LocationDetail(this.locationId);

  @override
  createState() => _LocationDetailState(this.locationId);
}

class _LocationDetailState extends State<LocationDetail> {
  final int locationId;
  Location location = Location.blank();

  // Constructor
  _LocationDetailState(this.locationId);

  @override
  void initState() {
    super.initState();
    loadData();
  }

  void loadData() async {
    final data = await Location.fetchById(this.locationId);

    if(mounted) {
      setState(() {
        this.location = data;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(location.name, style: Styles.navBarTitle)),
        body: SingleChildScrollView(
          child: Column(
              children: _renderBody(context, location),
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch)
        ));
  }

  List<Widget> _renderBody(BuildContext context, Location location) {
    var body = List<Widget>();
    body.add(_bannerImage(location.url, 170.0));
    body.addAll(_renderFacts(location));
    return body;
  }

  Widget _bannerImage(String url, double height) {
    Image image;
    try {
      if (url.isNotEmpty) {
        image = Image.network(url, fit: BoxFit.fitWidth);
      }
    } catch(e) {
      print('Could not load image from: $url');
    }
    return Container(
        constraints: BoxConstraints.tightFor(height: height),
        // Named constructor
        child: image
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
    return Container(
        padding: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 10.0),
        child: Text(
          title,
          textAlign: TextAlign.left,
          style: Styles.headerLarge,
        ));
  }

  Widget _sectionText(String text) {
    return Container(
        padding: EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 15.0),
        child: Text(text, style: Styles.textDefault));
  }

}
