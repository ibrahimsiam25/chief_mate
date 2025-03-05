int convertToInt(Object? value, {int defaultValue = 0}) {
  if (value is int) {
    return value;
  } else if (value is double) {
    return value.toInt();
  } else if (value is String) {
    return int.tryParse(value) ?? defaultValue;
  } else {
    return defaultValue;
  }
}
