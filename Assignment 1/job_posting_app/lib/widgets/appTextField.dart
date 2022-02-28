import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String placeholder;
  final String txt;
  final bool obscureText;

  const AppTextField({Key? key, required this.placeholder,
    this.txt = '',
    this.obscureText = false,
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, right: 27),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF1E1C24),
        border: Border.all(color: const Color(0xFF5D5D67), width: 1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        controller: TextEditingController()..text = txt,
        obscureText: obscureText,
        style: const TextStyle(color: Colors.white, fontSize: 15),
        decoration: InputDecoration(
          hintText: placeholder,
          hintStyle: const TextStyle(color: Color(0xFF8F8F9E), fontSize: 15,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  } // build
} // End of AppTextField Class
