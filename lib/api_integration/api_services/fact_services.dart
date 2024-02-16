import 'dart:convert';

import 'package:http/http.dart' as http;

class FactServices {
  Future getRandomFact() async {
    var response = await http.get(Uri.parse('https://catfact.ninja/fact'));

    print(response);

    var result = jsonDecode(response.body);

    print(result);
    return result;
  }
}
