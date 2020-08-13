library emoji_flag_converter;

class EmojiConverter {
  // Offset value points to the unicode character needed for the emoji flag
  static const int _offset = 127397;
  static final int _a = 'A'.codeUnitAt(0);
  static final int _z = 'Z'.codeUnitAt(0);
  static const _exception =
      FormatException('Provided code is not an alpha 2 country code.');

  static String fromAlpha2CountryCode(String alpha2Code) {
    if (alpha2Code.length != 2) throw _exception;

    String formatted = alpha2Code.toUpperCase();
    final int first = formatted.codeUnitAt(0);
    final int second = formatted.codeUnitAt(1);

    // Check that the two letters are alphabetical characters
    if (first > _z || first < _a || second > _z || second < _a) throw _exception;

    // Create the emoji flag from the offset
    return String.fromCharCode(first + _offset) + String.fromCharCode(second + _offset);
  }
}

