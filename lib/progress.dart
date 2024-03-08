import 'package:flutter/material.dart';

class Progress extends StatefulWidget {
  const Progress({super.key});
  State<Progress> createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const Text(
            'Days Until Fair',
            style: optionStyle,
          ),
          LinearProgressIndicator(
            value: 0.5,
            minHeight: 16,
          ),
          const SizedBox(height: 60),
          Text('Weight', style: optionStyle),
          LinearProgressIndicator(
            value: .5,
            minHeight: 16,
          ),
          const SizedBox(height: 60),
          Text('Maintenance', style: optionStyle),
          LinearProgressIndicator(
            value: .5,
            minHeight: 16,
          ),
        ],
      ),
    );
  }
}
