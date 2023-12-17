// controller.dart
import 'package:apps_ticket/model/ticket_model.dart';

class TicketBookingController {
  TicketBooking? _ticketBooking;

  void setTicketBooking(TicketBooking ticketBooking) {
    _ticketBooking = ticketBooking;
  }

  TicketBooking? getTicketBooking() {
    return _ticketBooking;
  }

  void clearTicketBooking() {
    _ticketBooking = null;
  }
}
