import 'package:flutter/material.dart';
import 'package:apps_ticket/model/invoice_model.dart';

class DetailInvoicePage extends StatelessWidget {
  final Ticket ticket;

  const DetailInvoicePage({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ticket Details'),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Event Details',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.indigo),
            ),
            const SizedBox(height: 16),
            _buildDetailRow('Event Name', ticket.eventName),
            _buildDetailRow('Event Date', ticket.eventDate.toLocal().toString()),
            const SizedBox(height: 16),
            Text(
              'Ticket Details',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.indigo),
            ),
            const SizedBox(height: 16),
            _buildDetailRow('Ticket Type', ticket.ticketType),
            _buildDetailRow('Quantity', ticket.quantity.toString()),
            _buildDetailRow('Ticket Price', '\$${ticket.ticketPrice.toStringAsFixed(2)}'),
            _buildDetailRow('Total Amount', '\$${(ticket.quantity * ticket.ticketPrice).toStringAsFixed(2)}'),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            value,
            style: const TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
