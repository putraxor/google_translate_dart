# WAINI :D

A library for translating words.

Created from templates made available by Stagehand under a BSD-style
[license](https://github.com/dart-lang/stagehand/blob/master/LICENSE).

## Usage

A simple usage example:
```
import 'package:google_translate_dart/libraries.dart';

main() async {
  var gt = new GoogleTranslate();
  var q = "Apa manfaat toge";
  var result = await gt.translate(source: 'id', target: 'en', text: q);
  print(result);
}
```


## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/putraxor/google_translate_dart/issues
