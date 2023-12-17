import 'package:flutter/material.dart';
import 'package:apps_ticket/Data/data_ticket.dart';
import 'package:apps_ticket/model/model_ticket.dart';


class TicketKonserApp extends StatelessWidget {
  final List<Konser> konser = concertsData;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Konser Ticket'),
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: List.generate(konser.length, (index) {
              return Card(
                elevation: 4.0,
                margin: EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Handle image click if needed
                      },
                      child: Image.network(
                        konser[index].imageUrl,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            konser[index].artist,
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            '${konser[index].date} • ${konser[index].time}',
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(height: 16.0),
                          Text(
                            'Venue: ${konser[index].venue}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            konser[index].description,
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                          SizedBox(height: 16.0),
                          Text(
                            'Seat Categories:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: konser[index].seatCategories
                                .map((category) => Text(
                                      '- $category',
                                      style: TextStyle(color: Colors.grey),
                                    ))
                                .toList(),
                          ),
                          SizedBox(height: 16.0),
                          ElevatedButton(
                            onPressed: () {
                              // Implement ticket purchase logic
                              // Navigate to ticket purchase screen or show payment dialog
                              // You may also want to integrate with a payment gateway.
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue,
                            ),
                            child: Text(
                              'Buy Tickets',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}