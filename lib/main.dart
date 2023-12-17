// main.dart
import 'package:flutter/material.dart';
import 'package:apps_ticket/controller/ticket_controller.dart';
import 'package:apps_ticket/view/ticket_form_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final TicketBookingController _controller = TicketBookingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ticket Booking App',
      home: TicketBookingForm(controller: _controller),
    );
  }
}
