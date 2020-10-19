
class Endpoint {
  // TODO - replace with env variables
  static const apiScheme = 'https';
  static const apiHost = 'fluttercrashcourse.com';
  static const prefix = '/api/v1';

  static Uri uri(String path, {Map<String, dynamic> queryParameters}) {
    return Uri(
      scheme: apiScheme,
      host: apiHost,
      path: '$prefix/$path',
      queryParameters: queryParameters
    );
  }
}