import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/data_model.dart';

class APIService {
  final String apiUrl = "https://reqres.in/api/users?page=1";

  Future<List<User>> fetchUsers() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final data = json.decode(response.body)['data'] as List;
      return data.map((user) => User.fromJson(user)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }
}
