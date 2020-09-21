import 'package:flutter/material.dart';
import 'package:flutter_quickstart/location_detail.dart';
import 'package:flutter_quickstart/model/location.dart';
import 'package:flutter_quickstart/style/Styles.dart';

class LocationList extends StatelessWidget {
  final List<Location> locations;

  // Constructor
  LocationList(this.locations);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Locations", style: Styles.navBarTitle)),
      body: ListView.builder(
        itemCount: this.locations.length,
        itemBuilder: _buildListTile,
      )
    );
  }

  Widget _buildListTile(BuildContext context, int index) {
    var location = this.locations[index];
    return ListTile(
      contentPadding: EdgeInsets.all(10.0),
      leading: _itemThumbnail(location),
      title: _itemTitle(location),
      onTap: () => _navigateToLocationDetail(context, index)
    );
  }

  Widget _itemThumbnail(Location location) {
    return Container(
      constraints: BoxConstraints.tightFor(width: 100.0),
      child: Image.network(location.url, fit: BoxFit.fitWidth)
    );
  }

  Widget _itemTitle(Location location) {
    return Text(location.name, style: Styles.textDefault);
  }

  void _navigateToLocationDetail(BuildContext context, int locationId) {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LocationDetail(locationId))
    );
  }
}
