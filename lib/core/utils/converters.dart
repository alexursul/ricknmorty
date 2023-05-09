DateTime stringToDateTime(String value) => DateTime.parse(value);

String dateTimeToString(DateTime value) => value.toIso8601String();
