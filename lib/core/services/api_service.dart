import 'package:http/http.dart' as http;

class ApiService {
  void getAlbum() {
    http.get(Uri.parse(''));
  }
}
