import 'package:nanoid2/nanoid2.dart';

class Generate {
  static String id(int n) {
    return nanoid(length: n, alphabet: Alphabet.alphanumeric);
  }

  static String pbId() => id(15);
  static String anonUsername() => id(16);
  static String anonPassword() => id(32);
}
