import 'package:http/http.dart' as http;

class HttpHelper {
  static Future<http.Response> doGetRequest({
    required Uri uri,
  }) async {
    late http.Response response;
    try {
      response = await http.get(uri, headers: _buildHeaders());
      return response;
    } catch (e) {
      throw Exception();
    }
  }

  static Future<http.Response> doPostRequest({
    required Uri uri,
  }) async {
    late http.Response response;
    try {
      response = await http.post(uri, headers: _buildHeaders());
      return response;
    } catch (e) {
      throw Exception();
    }
  }

  static Future<http.Response> doPutRequest({
    required Uri uri,
  }) async {
    late http.Response response;
    try {
      response = await http.put(uri, headers: _buildHeaders());
      return response;
    } catch (e) {
      throw Exception();
    }
  }

  static Future<http.Response> checkServerHealth({
    required Uri uri,
  }) async {
    late http.Response response;
    try {
      response = await http.get(uri);
      return response;
    } catch (e) {
      throw Exception();
    }
  }

  static Map<String, String>? _buildHeaders() {
    Map<String, String> headers = {};
    return headers;
  }
}
