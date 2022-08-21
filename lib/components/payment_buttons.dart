import 'package:flutter/material.dart';

class PaymentButtons extends StatelessWidget {
  final String iconPath;
  final String buttonText;

  const PaymentButtons({
    Key? key,
    required this.buttonText,
    required this.iconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 80,
          margin: EdgeInsets.symmetric(horizontal: 16),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey[200],
            boxShadow: [
              BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 5)
            ],
          ),
          child: Center(
            child: Image.asset(iconPath),
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          buttonText,
          style: TextStyle(
            color: Colors.black87,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
