import 'package:fix_master/features/repairs/presentation/cubit/maintenance_ticket_cubit.dart';
import 'package:fix_master/features/repairs/presentation/widgets/scroll_to_row_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HorizontalCategoryBar extends StatelessWidget {
  const HorizontalCategoryBar({super.key});

  static const List<String> _categories = [
    'All',
    'Diagnosing',
    'Repairing',
    'Ready',
    'Delivered',
  ];

  @override
  Widget build(BuildContext context) {
    String selectedCategory = context
        .watch<MaintenanceTicketCubit>()
        .selectedCategory;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        spacing: 8,
        children: _categories.map((category) {
          final isSelected = selectedCategory == category;
          return ScrollToRowButton(
            text: category,
            isSelected: isSelected,
            onTap: () {
              context.read<MaintenanceTicketCubit>().filterTickets(category);
            },
          );
        }).toList(),
      ),
    );
  }
}
