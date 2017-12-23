import 'package:google_translate_dart/libraries.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    GoogleTranslate awesome;

    setUp(() {
      awesome = new GoogleTranslate();
    });

    test('First Test', () {
      expect(awesome.isAwesome, isTrue);
    });
  });
}
