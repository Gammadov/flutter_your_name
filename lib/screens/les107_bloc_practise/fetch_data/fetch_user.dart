import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class RandomUser {
  static Future<Map<String, String>> getData() async {
    final response = await http.get(Uri.parse('https://randomuser.me/api/'));
    final jsonString = jsonDecode(response.body);

    return {
      'name': jsonString['results'][0]['name']['first'] +
          ' ' +
          jsonString['results'][0]['name']['last'],
      'email': jsonString['results'][0]['email'],
      'phone': jsonString['results'][0]['phone'],
      'picture': jsonString['results'][0]['picture']['large'],
    };
  }

// Text(response['results'][0]['location']['country']),

}
