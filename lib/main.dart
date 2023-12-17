// import 'package:flutter/material.dart';
// import 'package:apps_ticket/controller/invoice_controller.dart';
// import 'package:apps_ticket/view/invoice_page.dart';


final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

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
