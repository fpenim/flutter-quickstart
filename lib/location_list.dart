import 'package:flutter/material.dart';
import 'package:flutter_quickstart/location_detail.dart';
import 'package:flutter_quickstart/model/location.dart';
import 'package:flutter_quickstart/style/Styles.dart';

class LocationList extends StatefulWidget {
  @override
  createState() => _LocationListState();
}

class _LocationListState extends State<LocationList> {
  List<Location> locations = [];
  bool loading = false;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Locations", style: Styles.navBarTitle)),
      body: Column(children: [
        renderProgressIndicator(context),
        Expanded(child: renderListView(context))
      ])
    );
  }

  loadData() async {
    setState(() => this.loading = true);
    var data = await Location.fetchAll();
    setState(() {
      this.locations = data;
      this.loading = false;
    });
  }

  Widget renderProgressIndicator(BuildContext context) {
    return (this.loading ? LinearProgressIndicator(
      value: null,
      backgroundColor: Colors.white,
      valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
    ) : Container());
  }

  Widget renderListView(BuildContext context) {
    return  ListView.builder(
      itemCount: this.locations.length,
      // (context, index) arguments match
      itemBuilder: _buildListTile,
    );
  }

  Widget _buildListTile(BuildContext context, int index) {
    var location = this.locations[index];
    return ListTile(
      contentPadding: EdgeInsets.all(10.0),
      leading: _itemThumbnail(location),
      title: _itemTitle(location),
      onTap: () => _navigateToLocationDetail(context, location.id)
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
