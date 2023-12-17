import 'package:flutter/material.dart';
import 'package:apps_ticket/controller/invoice_controller.dart';
import 'package:apps_ticket/view/invoice_page.dart';


final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final InvoiceController controller = InvoiceController();
    controller.loadTickets();

    return MaterialApp(
      navigatorKey: navigatorKey,
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Flutter App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hello World!'),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    navigatorKey.currentContext!,
                    MaterialPageRoute(
                      builder: (context) => InvoicePage(controller: controller),
                    ),
                  );
                },
                child: Text('Show Invoice'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
