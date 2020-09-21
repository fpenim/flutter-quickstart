import 'package:flutter_quickstart/mock/mock_location.dart';
import 'package:test/test.dart';

void main() {

  test('test fetchAny', () {
    final mockLocation = MockLocation.fetchAny();
    expect(mockLocation, isNotNull);
    expect(mockLocation.name, isNotEmpty);
  });

  test('test fetchAll', () {
    final mockLocations = MockLocation.fetchAll();
    expect(mockLocations.length, greaterThan(0));
    expect(mockLocations.first.name, isNotEmpty);
  });

  test('test fetch', () {
    final mockLocation = MockLocation.fetch(0);
    expect(mockLocation, isNotNull);
    expect(mockLocation.name, isNotEmpty);
  });
}
