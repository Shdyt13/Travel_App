// lib/models/destination_model.dart
class Destination {
  final String name;
  final String imageUrl;
  final double rating;
  final String category;
  final String location;

  const Destination({
    required this.name,
    required this.imageUrl,
    required this.rating,
    required this.category,
    required this.location,
  });
}
