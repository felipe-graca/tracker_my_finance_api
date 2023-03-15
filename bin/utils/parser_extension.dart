extension ParserExtension on String {
  toT(Type T) {
    switch (T) {
      case String:
        return toString();
      case int:
        return int.parse(toString());
      default:
        return toString();
    }
  }
}
