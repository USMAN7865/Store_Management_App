//extension for String

extension NonNullString on String? {
  String onEmpty() {
    if (this == null) {
      return "";
    } else {
      return this!;
    }
  }
}

//extension for Int

extension NonNullInt on String? {
  String onEmpty() {
    if (this == null) {
      return "";
    } else {
      return this!;
    }
  }
}
