import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final Color? textColor;
  final String name;
  final Function() ontap;
  final double border;

  const CustomButton(
      {super.key,
      required this.color,
      required this.name,
      required this.ontap, this.border= 0, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: InkWell(
        onTap: ontap,
        child: Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            color: color,
            border: Border.all(width: border),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(
              name,
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: textColor,fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
