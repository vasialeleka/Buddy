import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../presentation/MainPage.dart';

class MainPageState extends State<MainPage> {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      appBar: AppBar(
        title: Text("Header"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary ,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("todo first ")
          ],
        ),
      ),
    );
  }
}