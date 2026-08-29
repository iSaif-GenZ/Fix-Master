import 'package:fix_master/features/repairs/domain/entities/maintenance_ticket.dart';
import 'package:fix_master/features/repairs/presentation/widgets/ticket_action_button.dart';
import 'package:flutter/widgets.dart';

class TicketActionButtons extends StatelessWidget {
  final VoidCallback? onPressed;
  const TicketActionButtons({super.key, required this.onPressed});



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: TicketActionButton(
              onPressed: () {
                Navigator.of(context).maybePop();
              },
              label: "Cancel",
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: TicketActionButton(onPressed: onPressed, label: "Save"),
          ),
        ],
      ),
    );
  }
}
