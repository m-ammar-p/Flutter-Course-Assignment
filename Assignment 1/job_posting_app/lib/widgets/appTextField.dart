import 'package:flutter/material.dart';

class AppTextField extends StatefulWidget {
  final String placeholder;
  final String txt;
  final bool isPassFiled;

  const AppTextField({
    Key? key,
    required this.placeholder,
    this.txt = '',
    this.isPassFiled = false,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _AppTextField();
}

class _AppTextField extends State<AppTextField> {
  bool _isHidden = true;
  TextEditingController controller = TextEditingController();

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
        controller: widget.isPassFiled ? controller : (TextEditingController()..text = widget.txt),
        obscureText: widget.isPassFiled ? _isHidden : !_isHidden,
        style: const TextStyle(color: Colors.white, fontSize: 15),
        decoration: InputDecoration(
          hintText: widget.placeholder,
          hintStyle: const TextStyle(
            color: Color(0xFF8F8F9E),
            fontSize: 15,
          ),
          border: InputBorder.none,
          suffixIcon: widget.isPassFiled ? GestureDetector(
            onTap: _togglePasswordView,
            child: _isHidden ? const Icon(
              Icons.visibility_off,
              color: Colors.red,): const Icon(Icons.visibility,color: Colors.red),
          ) : null,
        ),
      ),
    );
  } // build
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    }); // setState()
  } // _togglePasswordView()
} // End of AppTextField Class
