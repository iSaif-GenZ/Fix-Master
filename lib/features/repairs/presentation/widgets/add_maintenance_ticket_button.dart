import 'package:flutter/material.dart';

class AddMaintenanceTicketButton extends StatelessWidget {
  final VoidCallback onPressed;

  const AddMaintenanceTicketButton({super.key, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        foregroundColor: theme.colorScheme.onPrimary,
        minimumSize: const Size(double.infinity, 56),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 2,
      ),

      onPressed: onPressed,
      child: const Text(
        "New Repair",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
