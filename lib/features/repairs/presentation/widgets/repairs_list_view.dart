import 'package:fix_master/core/routes/app_routes.dart';
import 'package:fix_master/features/repairs/presentation/cubit/maintenance_ticket_cubit.dart';
import 'package:fix_master/features/repairs/presentation/cubit/maintenance_ticket_state.dart';
import 'package:fix_master/features/repairs/presentation/widgets/maintenance_ticket_card.dart';
import 'package:fix_master/features/repairs/presentation/widgets/swipe_to_delete_transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class RepairsListView extends StatelessWidget {
  const RepairsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MaintenanceTicketCubit, MaintenanceTicketState>(
      listener: (context, state) {
        if (state is MaintenanceTicketLoaded) {}
      },
      builder: (context, state) {
        if (state is MaintenanceTicketLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state is MaintenanceTicketError) {
          return Center(child: Text(state.message));
        }

        if (state is MaintenanceTicketLoaded) {
          final tickets = state.tickets;
          if (tickets.isEmpty) {
            return const Center(child: Text('No repair requests'));
          }
          return RefreshIndicator(
            onRefresh: () async {
              await context.read<MaintenanceTicketCubit>().getAllTickets(
                isRefresh: true,
              );
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
              child: ListView.builder(
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: tickets.length,
                itemBuilder: (context, index) {
                  final reversedIndex = state.tickets.length - 1 - index;
                  final ticket = tickets[reversedIndex];

                  return SwipeToDeleteTransaction(
                    key: ValueKey(ticket.id),
                    child: MaintenanceTicketCard(
                      title: ticket.customerName,
                      category: ticket.deviceModel,
                      formattedDate: DateFormat(
                        'dd/MM/yyyy',
                      ).format(ticket.receivedDate),
                      status: ticket.status,
                      onTap: () async {
                        final cubit = context.read<MaintenanceTicketCubit>();
                        await Navigator.of(context).pushNamed(
                          AppRoutes.ticketDetailsSection,
                          arguments: ticket,
                        );
                        cubit.getAllTickets(isRefresh: true);
                      },
                    ),
                    onDismissed: () {
                      final id = ticket.id;
                      if (id == null) return;
                      context.read<MaintenanceTicketCubit>().deleteTicket(id);
                    },
                  );
                },
              ),
            ),
          );
        }

        return const SizedBox.shrink();
      },
    );
  }
}
