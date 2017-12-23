import 'package:google_translate_dart/libraries.dart';

main() async {
  var gt = new GoogleTranslate();

  translate(String q) async {
    var result = await gt.translate(source: 'id', target: 'en', text: q);
    print(result);
  }

  await translate("Toge itu apa ya");
  await translate("Terus manfaatnya apa");
  await translate("Gimana cara makannya?");
}
