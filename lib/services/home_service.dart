import 'dart:convert';
import 'package:glysense_prototipe/models/home_model.dart';
import 'package:http/http.dart' as http;

class HomeService {
  Future<HomeModel> fetchHealthData(String deviceId) async {
    final response = await http.get(
      Uri.parse("https://example.com/device?device_id=$deviceId"),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return HomeModel.fromJson(data);
    } else {
      throw Exception("Failed to load data");
    }
  }
}
