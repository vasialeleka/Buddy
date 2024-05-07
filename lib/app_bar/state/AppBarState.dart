
import 'package:buddy/app_bar/presentation/AppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../InviteBlock.dart';

class CustomAppBarState extends State<CustomAppBar>{

  String _selectedLanguage = 'EN';

  void _selectLanguage(String language) {
    setState(() {
      _selectedLanguage = language;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buddy'),
        centerTitle: false,
        actions: <Widget>[Languages()],
      ),
      body: Content(),
    );
  }

  ListView Content() {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: [
        InviteBlock(),
        SizedBox(height: 16.0),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Main Text 2',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              Text(
                'Small Description 2',
                style: TextStyle(fontSize: 16.0),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Add button 2 action here
                },
                child: Text('Button 2'),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Row Languages() {
    return Row(
          children: [
            GestureDetector(
              onTap: () {
                _selectLanguage('UA');
              },
              child: Container(
                child: Text('UA'),
                padding: const EdgeInsets.all(8.0),
              ),
            ),
            GestureDetector(
              onTap: () {
                _selectLanguage('PL');
              },
              child: Container(
                child: Text('PL'),
                padding: const EdgeInsets.all(8.0),
              ),
            ),
            GestureDetector(
              onTap: () {
                _selectLanguage('EN');
              },
              child: Container(
                  child: Text('EN'),
                  padding: const EdgeInsets.fromLTRB(8.0, 8.0, 16.0, 8.0)),
            ) // Adjust the spacing as needed,
          ],
        );
  }
}
