class PropetyModel {
  final int id;
  final String imagePath;
  final String location;
  final double price;
  final bool isFavorite;

  const PropetyModel({
    required this.id,
    required this.imagePath,
    required this.location,
    required this.price,
    this.isFavorite = false,
  });

  PropetyModel copyWith({bool? isFavorite}) {
    return PropetyModel(
      id: id,
      imagePath: imagePath,
      location: location,
      price: price,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}
