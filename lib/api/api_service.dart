import 'package:http/http.dart' as http;
import 'dart:convert';
import '../model/loginmodel.dart';

class APIService {
  Future<LoginResponseModel> login(LoginRequestModel requestModel) async {
// String uri = "https://reqres.in/api/login";

    final response = await http.post(Uri.parse("http://localhost:8080/login"),
        body: requestModel.toJson());
    if (response.statusCode == 200 || response.statusCode == 400) {
      return LoginResponseModel.fromJson(
        json.decode(response.body),
      );
    } else {
      throw Exception('Failed to load data!');
    }
  }
}