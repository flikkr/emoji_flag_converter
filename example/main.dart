import 'dart:io';

import 'package:emoji_flag_converter/emoji_flag_converter.dart';

void main() {
  print('Enter a country\'s alpha 2 code: ');
  var input = stdin.readLineSync()!;

  var result = EmojiConverter.fromAlpha2CountryCode(input);
  print('And here is your result: $result');
}
