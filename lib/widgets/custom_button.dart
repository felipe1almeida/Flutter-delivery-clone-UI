import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double width;
  final VoidCallback onPressed;

  const CustomButton({
    Key? key,
    required this.text,
    this.width = 374,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 56,
      child: TextButton(
        onPressed: this.onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            Color(0xff0ACF83),
          ),
        ),
      ),
    );
  }
}
