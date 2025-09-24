
class CarCrewException implements Exception {
  const CarCrewException({
    required this.message,
  });

  final String message;

  @override
  String toString() => '$this - $message';
}