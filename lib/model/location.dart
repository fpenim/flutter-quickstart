import 'dart:convert';

import 'package:flutter_quickstart/endpoint.dart';
import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';
import 'location_fact.dart';

part 'location.g.dart';

@JsonSerializable()
class Location {
  final int id;
  final String name;
  final String url;
  final List<LocationFact> facts;

  Location({this.id, this.name, this.url, this.facts});

  Location.blank():
      id = 0,
      name = '',
      url = '',
      facts = [];

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  static Future<List<Location>> fetchAll() async {
    var uri = Endpoint.uri('/locations');

    final response = await http.get(uri.toString());

    if (response.statusCode != 200) {
      throw (response.body);
    }

    var responseBody = json.decode(response.body) as Map;
    List<Location> list = new List<Location>();

    for (var entry in responseBody.entries) {
      list.add(Location.fromJson(entry.value));
    }

    return list;
  }

  static Future<Location> fetchById(int id) async {
    var uri = Endpoint.uri('/locations/$id');

    final response = await http.get(uri.toString());

    if (response.statusCode != 200) {
      throw (response.body);
    }

    return Location.fromJson(json.decode(response.body));
  }
}
