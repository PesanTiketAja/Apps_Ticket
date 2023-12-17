import 'package:apps_ticket/model/invoice_model.dart';
import 'package:apps_ticket/Data/ticket_repository.dart';

class InvoiceController {
  List<Ticket> tickets = [];
  final TicketRepository ticketRepository = TicketRepository();

  void loadTickets() {
    tickets = ticketRepository.getTickets();
  }

  double calculateTotalAmount() {
    double total = 0;
    for (var ticket in tickets) {
      total += ticket.quantity * ticket.ticketPrice;
    }
    return total;
  }
}
