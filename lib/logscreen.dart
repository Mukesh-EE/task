import 'package:flutter/material.dart';

class LogBookScreen extends StatefulWidget {
  const LogBookScreen({super.key});

  @override
  State<LogBookScreen> createState() => _LogBookScreenState();
}

class _LogBookScreenState extends State<LogBookScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Logbook Screen'));
  }
}
