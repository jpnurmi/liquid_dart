import 'package:liquid/src/parser/lexer.dart';

import 'model.dart';

class ParseException extends Error {
  final String message;

  ParseException(this.message);

  String toString() => "Parse Exception: $message";

  ParseException.unexpected(Token token, {dynamic expected}): this('Unexpected Token: $token expected $expected');
}