class ReservationModel {
  final String status;
  final String title;
  final String description;
  final String imagePath;
  final DateTime startDate;
  final DateTime endDate;
  final String location;
  final String country;

  ReservationModel({
    required this.status,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.startDate,
    required this.endDate,
    required this.location,
    required this.country,
  });
}
