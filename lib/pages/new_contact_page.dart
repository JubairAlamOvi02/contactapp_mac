import 'package:flutter/material.dart';

class NewContactPage extends StatefulWidget {
  static const String routeName = '/contact_new';

  @override
  State<NewContactPage> createState() => _NewContactPageState();
}

class _NewContactPageState extends State<NewContactPage> {
  final nameController =TextEditingController();
  final phoneController =TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('New Contact Page'),),

      body:Form(
        child: ListView(
          padding: const EdgeInsets.all(10.0),
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Enter Name',
                prefixIcon: Icon(Icons.person),
              ),
              validator: (value) {
                if(value == null || value.isEmpty){
                  return 'Please provide a valid name!';
                }
              },
            ),
            SizedBox(height: 10,),

            TextFormField(
              controller: phoneController,
              decoration: InputDecoration(
                labelText: 'Enter PhoneNumber',
                prefixIcon: Icon(Icons.phone),
              ),
              validator: (value){
                if(value == null || value.isEmpty){
                  return 'Please enter the valid phoneNumber';
                }
              },
            )




          ],
        ),
      ),
    );
  }
}
