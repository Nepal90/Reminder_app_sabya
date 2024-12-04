import 'package:flutter/material.dart';

class ReminderCard extends StatelessWidget {
  final String text;
  final bool completed;
  final ValueChanged<bool?> onChanged;

  const ReminderCard({
    super.key,
    required this.text,
    required this.completed,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.lightBlue[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              decoration: completed ? TextDecoration.lineThrough : null,
            ),
          ),
          Checkbox(
            value: completed,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
