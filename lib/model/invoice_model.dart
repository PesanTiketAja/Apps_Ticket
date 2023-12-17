class Ticket {
  final String eventName;
  final DateTime eventDate;
  final String ticketType;
  final int quantity;
  final double _ticketPrice;

  Ticket({
    required this.eventName,
    required this.eventDate,
    required this.ticketType,
    required this.quantity,
    required double ticketPrice,
  }) : _ticketPrice = ticketPrice;

  double get ticketPrice => _ticketPrice;
}
