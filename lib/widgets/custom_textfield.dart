import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final bool isCardField;
  final double width;
  final String image;
  final TextEditingController controller;

  const CustomTextField({
    Key? key,
    required this.label,
    required this.isCardField,
    this.width = 374,
    this.image = '',
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, bottom: 5),
          child: Text(
            label,
            style: TextStyle(
              color: Color(0xff9586A8),
            ),
          ),
        ),
        Container(
          width: width,
          height: 48,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: Color(0xff1D9D0E3),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                borderSide: BorderSide(
                  width: 1,
                  color: Color(0xff1D9D0E3),
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                borderSide: BorderSide(
                  width: 1,
                  color: Color(0xff1D9D0E3),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                borderSide: BorderSide(
                  width: 1,
                  color: Color(0xff1D9D0E3),
                ),
              ),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  borderSide: BorderSide(width: 1, color: Colors.red)),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(4),
                ),
                borderSide: BorderSide(
                  width: 1,
                  color: Color(0xff1D9D0E3),
                ),
              ),
              suffix: image != ''
                  ? SvgPicture.asset(
                      image,
                      width: 32,
                      height: 20,
                    )
                  : null,
            ),
          ),
        ),
      ],
    );
  }
}
