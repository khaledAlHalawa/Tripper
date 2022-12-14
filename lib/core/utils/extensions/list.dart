extension ListExtension<T> on List<T> {
  bool get isNullOrEmpty => isEmpty;
}

extension ListExtension2<T> on List<T>? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;
}
