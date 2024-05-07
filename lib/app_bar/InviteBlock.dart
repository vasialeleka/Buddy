
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/StyledButton.dart';

Container InviteBlock() {
  return Container(
    alignment: Alignment.center,
    height: 300,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/images.jpeg'),
        fit: BoxFit.cover,
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Основний заголовок',
                style: TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              Text(
                'Другорядний заголовок',
                style: TextStyle(fontSize: 16.0),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: MainButton('Прийти', () {
            //TODO handle click
          }),
        ),
      ],
    ),
  );
}