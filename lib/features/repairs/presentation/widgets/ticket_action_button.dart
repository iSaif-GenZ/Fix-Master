import 'package:flutter/material.dart';

class TicketActionButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  final IconData icon;

  const TicketActionButton({
    super.key,
    required this.onPressed,
    required this.label,
    this.icon = Icons.check_rounded,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // يتمدد بعرض الكارد بالكامل
      height: 48.0, // ارتفاع مريح للعين واللمس
      child: FilledButton(
        onPressed: onPressed,
        style: FilledButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.0),
          ),
        ),
        child: Text(
          label,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
