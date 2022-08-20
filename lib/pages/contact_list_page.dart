import 'package:contactapp_mac/pages/new_contact_page.dart';
import 'package:flutter/material.dart';


class ContactListPage extends StatefulWidget {
  static const String routeName = '/contact_list';

  @override
  State<ContactListPage> createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List Page'),
      ),
      body: Container(

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, NewContactPage.routeName);
        },
        child: Icon(Icons.person_add),
        tooltip: 'Add a new contact',
      ),
    );
  }
}
