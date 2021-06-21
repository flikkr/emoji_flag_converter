import 'package:emoji_flag_converter/emoji_flag_converter.dart';
import 'package:test/test.dart';

void main() {
  group('General tests to see if emoji converter functions', () {
    test(
        'Emoji converter should convert ISO 2 country codes to their respective flag',
        () {
      expect(EmojiConverter.fromAlpha2CountryCode('AF'), '🇦🇫');
      expect(EmojiConverter.fromAlpha2CountryCode('BE'), '🇧🇪');
    });
    test('Emoji converter should not accept codes longer than 2', () {
      expect(
          () => EmojiConverter.fromAlpha2CountryCode('ASD'), throwsException);
    });
    test('Emoji converter should not accept codes less than 2', () {
      expect(() => EmojiConverter.fromAlpha2CountryCode('A'), throwsException);
    });
    test('Emoji converter should accept lowercase codes', () {
      expect(EmojiConverter.fromAlpha2CountryCode('af'), '🇦🇫');
    });
    test('Emoji converter should not accept non-alphabetical characters', () {
      expect(() => EmojiConverter.fromAlpha2CountryCode('12'), throwsException);
    });
  });
}
