import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class FakeApi {

  static Future<Map<String, String>> getColor() async {
    // print('ожидание ответа...');

    final response = await http.get(Uri.parse('https://colornames.org/random/json/'));
    final jsonString = jsonDecode(response.body);

    return {
      'name': jsonString['name'],
      'value': jsonString['hexCode'],
    };
  }

  static Stream<Map<String, String>> get100colors(Duration interval) async* {
    // print('ожидание ответа...');
    final response = await http.get(Uri.parse('https://colornames.org/fresh/json/'));
    final jsonList = jsonDecode(response.body);

    for (var map in jsonList) {
      await Future.delayed(interval);
      yield {
        'name': map['name'],
        'value': map['hexCode'],
      };
    }
  }
}
