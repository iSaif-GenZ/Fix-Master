import 'package:fix_master/core/di/service_locator.dart';
import 'package:fix_master/core/theme/app_colors.dart';
import 'package:fix_master/features/repairs/domain/entities/maintenance_ticket.dart';
import 'package:fix_master/features/repairs/presentation/cubit/maintenance_ticket_cubit.dart';
import 'package:fix_master/features/repairs/presentation/cubit/maintenance_ticket_state.dart';
import 'package:fix_master/features/repairs/presentation/widgets/add_maintenance_ticket_button.dart';
import 'package:fix_master/features/repairs/presentation/widgets/app_input_field.dart';
import 'package:fix_master/features/repairs/presentation/widgets/form_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddMaintenanceTicket extends StatefulWidget {
  const AddMaintenanceTicket({super.key});

  @override
  State<AddMaintenanceTicket> createState() => _AddMaintenanceTicketState();
}

class _AddMaintenanceTicketState extends State<AddMaintenanceTicket> {
  late final TextEditingController _customerNameController =
      TextEditingController();
  late final TextEditingController _phoneNumberController =
      TextEditingController();
  late final TextEditingController _deviceModelController =
      TextEditingController();
  late final TextEditingController _issueDescriptionController =
      TextEditingController();

  @override
  void dispose() {
    _customerNameController.dispose();
    _phoneNumberController.dispose();
    _deviceModelController.dispose();
    _issueDescriptionController.dispose();
    super.dispose();
  }

  void _submitData(BuildContext context) {
    final ticket = MaintenanceTicket(
      customerName: _customerNameController.text.trim(),
      phoneNumber: _phoneNumberController.text.trim(),
      deviceModel: _deviceModelController.text.trim(),
      issueDescription: _issueDescriptionController.text.trim(),
      receivedDate: DateTime.now(),
    );
    context.read<MaintenanceTicketCubit>().createTicket(ticket);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (create) => sl<MaintenanceTicketCubit>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Add Maintenance Ticket",
            style: const TextStyle(
              color: AppColors.offWhite,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: BlocConsumer<MaintenanceTicketCubit, MaintenanceTicketState>(
          builder: (context, state) {
            return ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              children: [
                FormCard(
                  children: [
                    AppInputField(
                      label: "Customer Name",
                      controller: _customerNameController,
                    ),
                    const SizedBox(height: 16),
                    AppInputField(
                      label: "Phone Number",
                      controller: _phoneNumberController,
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: 16),

                    AppInputField(
                      label: "Device Model",
                      controller: _deviceModelController,
                    ),
                    const SizedBox(height: 16),

                    AppInputField(
                      label: "Issue Description",
                      controller: _issueDescriptionController,
                      maxLines: 5,
                    ),
                  ],
                ),
                const SizedBox(height: 24),

                AddMaintenanceTicketButton(onPressed: () => _submitData(context),),
              ],
            );
          },
          listener: (context, state) {
            if (state is MaintenanceTicketLoaded) {
              Navigator.of(context).pop();
            } else if (state is MaintenanceTicketError) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(state.message)));
            }
          },
        ),
      ),
    );
  }
}
