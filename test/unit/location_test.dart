import 'dart:convert';
import 'package:flutter_quickstart/model/location.dart';
import 'package:test/test.dart';

void main() {
  test("test location deserialization", () {
    const locationJSON =
    '''
    {
      "id": 1,
      "name": "Arashiyama Bamboo Grove",
      "url": "https://cdn-images-1.medium.com/max/2000/1*vdJuSUKWl_SA9Lp-32ebnA.jpeg",
      "facts": [
        {
        "title": "Summary",
        "text": "This bamboo grove is on the outskirts of Kyoto."
        }
      ]
    }
    ''';

    final locationMap = json.decode(locationJSON) as Map<String, dynamic>;
    
    expect("Arashiyama Bamboo Grove", equals(locationMap['name']));

    final location = Location.fromJson(locationMap);

    expect(location.name, equals(locationMap['name']));
    expect(location.url, equals(locationMap['url']));
    expect(location.facts[0].title, matches(locationMap['facts'][0]['title']));
    expect(location.facts[0].text, matches(locationMap['facts'][0]['text']));
  });
  
  test("test /locations", () async {
    final locations = await Location.fetchAll();

    for (var location in locations) {
      expect(location.name, hasLength(greaterThan(0)));
      expect(location.url, hasLength(greaterThan(0)));
    }
  });

  test("test /locations/id", () async {
    final location = await Location.fetchById(1);

    expect(location.name, hasLength(greaterThan(0)));
    expect(location.url, hasLength(greaterThan(0)));
    expect(location.facts.length, greaterThan(0));
  });

}
