extension DurationExtension on Duration {
  DateTime asDateTime() => DateTime.fromMillisecondsSinceEpoch(
        DateTime.now().millisecondsSinceEpoch - inMilliseconds,
      );
}
