# google_translate_dart
```
import 'package:google_translate_dart/libraries.dart';

main() async {
  var gt = new GoogleTranslate();
  var q = "Apa manfaat toge";
  var result = await gt.translate(source: 'id', target: 'en', text: q);
  print(result);
}
```
