import 'package:flutter/material.dart';

class NewContactPage extends StatefulWidget {
  static const String routeName = '/contact_new';

  @override
  State<NewContactPage> createState() => _NewContactPageState();
}

class _NewContactPageState extends State<NewContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('New Contact Page'),),
    );
  }
}
