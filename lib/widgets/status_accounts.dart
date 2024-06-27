import 'package:flutter/material.dart';

class StatusBoxes extends StatelessWidget {
  const StatusBoxes({
    super.key,
    required this.accountName,
    required this.statustextName,
  });
  final String statustextName;
  final String accountName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Column(
        children: [
          SizedBox(
            width: 80,
            height: 80,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                statustextName,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(accountName)
        ],
      ),
    );
  }
}
