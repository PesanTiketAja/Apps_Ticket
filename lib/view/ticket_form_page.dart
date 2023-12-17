// view.dart
import 'package:flutter/material.dart';
import 'package:apps_ticket/model/ticket_model.dart';
import 'package:apps_ticket/controller/ticket_controller.dart';

class TicketBookingForm extends StatefulWidget {
  final TicketBookingController controller;

  TicketBookingForm({required this.controller});

  @override
  _TicketBookingFormState createState() => _TicketBookingFormState();
}

class _TicketBookingFormState extends State<TicketBookingForm> {
  final TextEditingController _eventNameController = TextEditingController();
  final TextEditingController _eventDateController = TextEditingController();
  String _selectedTicketType = 'VIP';
  int _quantity = 2; // Default quantity
  double _ticketPrice = 1000000.0;

  final List<String> _ticketTypes = ['VIP', 'Regular', 'Student'];

  @override
  void initState() {
    super.initState();
    // Set initial values in the form
    _eventNameController.text = 'Konser ColdPlay';
    _eventDateController.text = DateTime.now().toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ticket Booking Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _eventNameController,
              decoration: InputDecoration(labelText: 'Event Name'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _eventDateController,
              decoration: InputDecoration(labelText: 'Event Date'),
              keyboardType: TextInputType.datetime,
            ),
            SizedBox(height: 16.0),
            DropdownButtonFormField(
              value: _selectedTicketType,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedTicketType = newValue!;
                  _updateTicketPrice();
                });
              },
              items: _ticketTypes.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              decoration: InputDecoration(labelText: 'Ticket Type'),
            ),
            SizedBox(height: 16.0),
            TextField(
              onChanged: (value) {
                setState(() {
                  _quantity = int.tryParse(value) ?? 0;
                });
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Quantity'),
            ),
            SizedBox(height: 16.0),
            Text('Ticket Price: $_ticketPrice'),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _saveTicketBooking();
              },
              child: Text('Save Ticket Booking'),
            ),
          ],
        ),
      ),
    );
  }

  void _updateTicketPrice() {
    // Update ticket price based on selected ticket type
    switch (_selectedTicketType) {
      case 'VIP':
        _ticketPrice = 1000000.0;
        break;
      case 'Regular':
        _ticketPrice = 500000.0;
        break;
      case 'Student':
        _ticketPrice = 250000.0;
        break;
    }
  }

  void _saveTicketBooking() {
    TicketBooking ticketBooking = TicketBooking(
      eventName: _eventNameController.text,
      eventDate: DateTime.parse(_eventDateController.text),
      ticketType: _selectedTicketType,
      quantity: _quantity,
      ticketPrice: _ticketPrice,
    );

    // Set data to the controller
    widget.controller.setTicketBooking(ticketBooking);

    // Show confirmation dialog or navigate to another screen
    _showConfirmationDialog();
  }

  void _showConfirmationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Ticket Booking Confirmation'),
          content: Text('Ticket booking saved successfully!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}