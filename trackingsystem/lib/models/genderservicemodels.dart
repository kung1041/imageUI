import 'package:http/http.dart' as http;
import 'package:trackingsystem/models/gendermodel.dart';

class genderServices {
  //
  static const String url =
      'http://192.168.1.3:8080/ProjectFlutter/selectallgender.php';
  static Future<List<gendermodel>> getgenders() async {
    try {
      final response = await http.get(url);
      if (200 == response.statusCode) {
        final List<gendermodel> genders = welcomeFromJson(response.body);
        return genders;
      } else {
        return List<gendermodel>();
      }
    } catch (e) {
      return List<gendermodel>();
    }
  }
}
