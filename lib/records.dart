import 'package:flutter/material.dart';
import 'package:helloworld/date_log.dart';
import 'package:helloworld/record_detail_view.dart';

class Records extends StatefulWidget {
  const Records({super.key});
  @override
  _WidgetState createState() => _WidgetState();
}

class _WidgetState extends State<Records> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text('Porky'),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => DateLog()));
          },
        ),
        ListTile(
          title: Text('Coco'),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => DateLog()));
          },
        ),
        ListTile(
          title: Text('Luna'),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => DateLog()));
          },
        ),
      ],
    );
  }
}
