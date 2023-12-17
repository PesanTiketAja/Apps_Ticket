// models/konser_model.dart
class Konser {
  final String artist;
  final String date;
  final String time;
  final String venue;
  final String description;
  final List<String> seatCategories;
  final String imageUrl;

  Konser({
    required this.artist,
    required this.date,
    required this.time,
    required this.venue,
    required this.description,
    required this.seatCategories,
    required this.imageUrl,
  });
}
