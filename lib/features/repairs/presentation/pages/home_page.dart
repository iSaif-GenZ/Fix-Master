import 'package:fix_master/core/di/service_locator.dart';
import 'package:fix_master/core/routes/app_routes.dart';
import 'package:fix_master/features/repairs/presentation/cubit/maintenance_ticket_cubit.dart';
import 'package:fix_master/features/repairs/presentation/widgets/custom_app_bar.dart';
import 'package:fix_master/features/repairs/presentation/widgets/horizontal_category_bar.dart';
import 'package:fix_master/features/repairs/presentation/widgets/repairs_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (cotext) => sl<MaintenanceTicketCubit>()..getAllTickets(),
      child: Builder(
        builder: (context) => Scaffold(
          appBar: CustomAppBar(),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              await Navigator.of(context).pushNamed(
                AppRoutes.addMaintenanceTicket,
              );
              if (context.mounted) {
                context.read<MaintenanceTicketCubit>().getAllTickets();
              }
            },
            child: Icon(Icons.add),
          ),
          body: Container(
            child: Column(
              children: [
                SizedBox(height: 16),
                HorizontalCategoryBar(),
                SizedBox(height: 12),
                Expanded(child: RepairsListView()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
