import 'package:flutter/material.dart';

class Common {
  static ElevatedButton buildElevatedButton(BuildContext context,String buttonText,String routerName) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, routerName);
      },
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50), // Kích thước tối thiểu của nút
        padding: const EdgeInsets.all(20),
        textStyle: const TextStyle(fontSize: 20),
        backgroundColor: Colors.greenAccent,
        foregroundColor: Colors.white,
      ),
      child: Text(buttonText),

    );
  }
}