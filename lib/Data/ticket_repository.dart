import 'package:apps_ticket/model/invoice_model.dart';

class TicketRepository {
  List<Ticket> getTickets() {
    return [
      Ticket(
        eventName: 'Konser ColdPlay',
        eventDate: DateTime.now(),
        ticketType: 'VIP',
        quantity: 2,
        ticketPrice: 75.0,
      ),
      Ticket(
        eventName: 'Konser JKT 48',
        eventDate: DateTime.now().add(Duration(days: 7)),
        ticketType: 'Regular',
        quantity: 3,
        ticketPrice: 50.0,
      ),
    ];
  }
}
