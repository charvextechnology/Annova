class Booking {
  final String id;
  final String professionalId;
  final String professionalName;
  final String serviceSelected;
  final int price;
  final String selectedDate;
  final String selectedTime;
  final String location;
  final String status; // pending, accepted, declined, cancelled, completed
  final DateTime createdAt;

  const Booking({
    required this.id,
    required this.professionalId,
    required this.professionalName,
    required this.serviceSelected,
    required this.price,
    required this.selectedDate,
    required this.selectedTime,
    required this.location,
    required this.status,
    required this.createdAt,
  });
}
