import 'package:flutter/material.dart';

class ScrollToRowButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback? onTap;
  const ScrollToRowButton({
    super.key,
    required this.text,
    this.isSelected = false,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected
              ? theme.colorScheme.primary
              : theme.colorScheme.surfaceContainerHighest,

          foregroundColor: isSelected
              ? theme.colorScheme.onPrimary
              : theme.colorScheme.onSurfaceVariant,
          elevation: isSelected ? 3 : 0,
          shadowColor: isSelected
              ? theme.colorScheme.primary.withValues(alpha: 0.3)
              : Colors.transparent,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          minimumSize: Size.zero,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: onTap,

        child: Text(
          text,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
        ),
      ),
    );
  }
}
