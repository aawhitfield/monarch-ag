import 'package:flutter/material.dart';
import 'package:helloworld/record_detail_view.dart';

class DateLog extends StatefulWidget {
  const DateLog({super.key});
  _DateLogState createState() => _DateLogState();
}

class _DateLogState extends State<DateLog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dates"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('1/26/24'),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => RecordsDetailView()));
            },
          ),
          ListTile(
            title: Text('1/27/24'),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => RecordsDetailView()));
            },
          ),
          ListTile(
            title: Text('1/28/24'),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => RecordsDetailView()));
            },
          ),
        ],
      ),
    );
  }
}
