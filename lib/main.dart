import 'package:contactapp_mac/pages/contacrt_details_page.dart';
import 'package:contactapp_mac/pages/contact_list_page.dart';
import 'package:contactapp_mac/pages/new_contact_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: ContactListPage(),
      routes: {
        ContactDetailsPage.routeName:(context) => ContactDetailsPage(),
        ContactListPage.routeName:(context) => ContactListPage(),
        NewContactPage.routeName:(context) => NewContactPage(),
      },
    );
  }
}
