import 'package:flutter/material.dart';

ElevatedButton MainButton(String buttonTitle, void Function() onClick) {
  return ElevatedButton(
    onPressed: onClick,
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Colors.yellowAccent.shade700,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0), // Make button rounded
      ),
    ),
    child: Text(
      buttonTitle,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
