import 'package:http/http.dart' as http;

class HttpClient {
  // Métodos para fazer solicitações HTTP
  Future<http.Response> get(String url) async {
    return await http.get(Uri.parse(url));
  }

  Future<http.Response> post(String url, {Map<String, String>? headers, dynamic body}) async {
    return await http.post(Uri.parse(url), headers: headers, body: body);
  }

  // Adicione mais métodos conforme necessário para outras operações HTTP
}