import 'package:fix_master/core/theme/app_colors.dart';
import 'package:fix_master/features/repairs/presentation/cubit/maintenance_ticket_cubit.dart';
import 'package:fix_master/features/repairs/presentation/cubit/maintenance_ticket_state.dart';
import 'package:fix_master/features/repairs/presentation/widgets/app_input_field.dart';
import 'package:fix_master/features/repairs/presentation/widgets/custom_drop_down_input.dart';
import 'package:fix_master/features/repairs/presentation/widgets/form_card.dart';
import 'package:fix_master/features/repairs/presentation/widgets/ticket_action_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/maintenance_ticket.dart';
import '../../domain/enums/ticket_status.dart';

class TicketDetailsSection extends StatefulWidget {
  const TicketDetailsSection({super.key});

  @override
  State<TicketDetailsSection> createState() => _TicketDetailsSectionState();
}

class _TicketDetailsSectionState extends State<TicketDetailsSection> {
  late final TextEditingController _customerNameController =
      TextEditingController();
  late final TextEditingController _phoneNumberController =
      TextEditingController();
  late final TextEditingController _deviceModelController =
      TextEditingController();
  late final TextEditingController _issueDescriptionController =
      TextEditingController();

  bool _isInitialized = false;
  MaintenanceTicket? _ticket;
  TicketStatus? _selectedStatus;

  static const _statusLabels = {
    TicketStatus.underInspection: 'Under Inspection',
    TicketStatus.underRepair: 'Under Repair',
    TicketStatus.readyForDelivery: 'Ready For Delivery',
    TicketStatus.delivered: 'Delivered',
  };

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (!_isInitialized) {
      _ticket =
          ModalRoute.of(context)?.settings.arguments as MaintenanceTicket?;
      if (_ticket != null) {
        _selectedStatus = _ticket!.status;
        _customerNameController.text = _ticket!.customerName;
        _phoneNumberController.text = _ticket!.phoneNumber;
        _deviceModelController.text = _ticket!.deviceModel;
        _issueDescriptionController.text = _ticket!.issueDescription;
      }
      _isInitialized = true;
    }
  }

  @override
  void dispose() {
    _customerNameController.dispose();
    _phoneNumberController.dispose();
    _deviceModelController.dispose();
    _issueDescriptionController.dispose();
    super.dispose();
  }

  void _submitData(BuildContext context) {
    if (_ticket == null) return;

    final updatedTicket = _ticket!.copyWith(
      customerName: _customerNameController.text.trim(),
      phoneNumber: _phoneNumberController.text.trim(),
      deviceModel: _deviceModelController.text.trim(),
      issueDescription: _issueDescriptionController.text.trim(),
      status: _selectedStatus,
    );

    context.read<MaintenanceTicketCubit>().updateTicket(updatedTicket);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Details Section",
          style: TextStyle(
            color: AppColors.offWhite,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: BlocConsumer<MaintenanceTicketCubit, MaintenanceTicketState>(
        listener: (context, state) {
          if (state is MaintenanceTicketLoaded) {
            Navigator.of(context).maybePop();
          } else if (state is MaintenanceTicketError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
          }
        },
        builder: (context, state) {
          final isLoading = state is MaintenanceTicketLoading;

          return ListView(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
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
                  CustomDropDownInput(
                    label: "Maintenance Status",
                    initialValue: _statusLabels[_selectedStatus],
                    options: _statusLabels.values.toList(),
                    onChanged: (value) {
                      if (value == null) return;
                      setState(() {
                        _selectedStatus = _statusLabels.entries
                            .firstWhere((entry) => entry.value == value)
                            .key;
                      });
                    },
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
              TicketActionButtons(

                onPressed: isLoading ? null : () => _submitData(context),
              ),
              const SizedBox(height: 16),
            ],
          );
        },
      ),
    );
  }
}