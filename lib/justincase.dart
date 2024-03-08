import 'package:flutter/material.dart';

class RecordsDetailView extends StatefulWidget {
  const RecordsDetailView({super.key});
  _RecordsDetailViewState createState() => _RecordsDetailViewState();
}

class _RecordsDetailViewState extends State<RecordsDetailView> {
  @override
  Widget build(BuildContext context) {
    return Container();
    body:
    ListView(children: [
      ListTile(
        title: Text('1/26/24'),
      )
    ]);
  }
}
