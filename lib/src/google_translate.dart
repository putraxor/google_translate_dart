import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GoogleTranslate {
  var _headers = {
    "Accept-Language": "en-US",
    "Host": "translate.google.com",
    "Accept": "application/json; charset=utf-8",
    "User-Agent":
        "AndroidTranslate/5.3.0.RC02.130475354-53000263 5.1 phone TRANSLATE_OPM5_TEST_1"
  };
  var _client = new http.Client();

  String _url =
      "https://translate.google.co.id/translate_a/single?client=at&dt=t&dt=ld&dt=qca&dt=rm&dt=bd&dj=1&hl=es-ES&ie=UTF-8&oe=UTF-8&inputm=2&otf=2&iid=1dd3b944-fa62-4b55-b330-74909a99969e";

  bool get isAwesome => true;

  Future<String> translate(
      {String source: "en",
      String target: "id",
      String text: "Empty word to translate"}) async {
    print("Translate ${text.length} ${text.length > 5000
        ? " exceeded of 5000 "
        : ""}characters");
    int limit = text.length > 5000 ? 5000 : text.length;
    var fields = {'sl': source, 'tl': target, 'q': text.substring(0, limit)};
    String result = "";
    try {
      var response = await _client.post(_url, body: fields, headers: _headers);
      var sentences = JSON.decode(response.body)['sentences'];
      sentences.forEach((it) => result += it['trans']);
    } catch (e) {
      print(e);
      result = "Translation error!";
    }
    return result;
  }
}
