import 'package:fix_master/features/repairs/domain/entities/maintenance_ticket.dart';
import 'package:fix_master/features/repairs/domain/usecases/create_ticket_usecase.dart';
import 'package:fix_master/features/repairs/domain/usecases/delete_ticket_usecase.dart';
import 'package:fix_master/features/repairs/domain/usecases/get_all_tickets_usecase.dart';
import 'package:fix_master/features/repairs/domain/usecases/get_ticket_by_id_usecase.dart';
import 'package:fix_master/features/repairs/domain/usecases/update_ticket_usecase.dart';
import 'package:fix_master/features/repairs/presentation/cubit/maintenance_ticket_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class MaintenanceTicketCubit extends Cubit<MaintenanceTicketState> {
  final GetAllTicketUseCase getAllTicketUseCase;
  final GetTicketByIdUsecase getTicketByIdUsecase;
  final CreateTicketUsecase createTicketUsecase;
  final UpdateTicketUsecase updateTicketUsecase;
  final DeleteTicketUsecase deleteTicketUseCase;
  List<MaintenanceTicket> _allTickets = [];
  String selectedCategory = 'All';

  MaintenanceTicketCubit({
    required this.getAllTicketUseCase,
    required this.getTicketByIdUsecase,
    required this.createTicketUsecase,
    required this.updateTicketUsecase,
    required this.deleteTicketUseCase,
  }) : super(const MaintenanceTicketInitial());

  Future<void> getAllTickets({bool isRefresh = false}) async {
    if (!isRefresh) {
      emit(const MaintenanceTicketLoading());
    }
    final result = await getAllTicketUseCase();
    result.fold(
      (failure) => emit(MaintenanceTicketError(message: failure.message)),
      (tickets) {
        _allTickets = tickets;
        _applyFilter();
      },
    );
  }

  void filterTickets(String category) {
    selectedCategory = category;
    _applyFilter();
  }

  void _applyFilter() {
    emit(const MaintenanceTicketLoading());

    if (selectedCategory == 'All') {
      emit(MaintenanceTicketLoaded(tickets: _allTickets));
    } else {
      final filteredTickets = _allTickets.where((ticket) {
        final dbStatus = ticket.status.toString().toLowerCase();
        final buttonCategory = selectedCategory.toLowerCase();

        return dbStatus.contains(buttonCategory);
      }).toList();

      emit(MaintenanceTicketLoaded(tickets: filteredTickets));
    }
  }

  Future<void> getTicketById(String id) async {
    emit(const MaintenanceTicketLoading());
    final result = await getTicketByIdUsecase(id);
    result.fold(
      (failure) => emit(MaintenanceTicketError(message: failure.message)),
      (ticket) => emit(MaintenanceTicketLoaded(tickets: [ticket])),
    );
  }

  Future<void> createTicket(MaintenanceTicket ticket) async {
    emit(const MaintenanceTicketLoading());
    final result = await createTicketUsecase(ticket);
    result.fold(
      (failure) => emit(MaintenanceTicketError(message: failure.message)),
      (_) => getAllTickets(),
    );
  }

  Future<void> updateTicket(MaintenanceTicket ticket) async {
    emit(const MaintenanceTicketLoading());
    bool shouldLaunchWhatsApp = false;
    MaintenanceTicket ticketToUpdate = ticket;

    if (ticket.status.toString().toLowerCase() == 'delivered' &&
        !ticket.isWhatsAppSent) {
      shouldLaunchWhatsApp = true;
      ticketToUpdate = ticket.copyWith(isWhatsAppSent: true);
    }

    final result = await updateTicketUsecase(ticketToUpdate);
    result.fold(
      (failure) => emit(MaintenanceTicketError(message: failure.message)),
      (_) async {
        if (shouldLaunchWhatsApp) {
          await _launchWhatsApp(ticketToUpdate);
        }
        getAllTickets();
      },
    );
  }

  Future<void> _launchWhatsApp(MaintenanceTicket ticket) async {
    final cleanPhone = ticket.phoneNumber.replaceAll(RegExp(r'\D'), '');
    final message =
        """
Hello Dear Customer, your device is ready! 📱✨

Repair Summary:
• Name: "${ticket.customerName}"
• Phone: "${ticket.phoneNumber}"
• Device: "${ticket.deviceModel}"
• Issue: "${ticket.issueDescription}"

Your device has been fixed by our center and is ready for pickup. Feel free to visit us anytime to receive it. We are honored to serve you!

FixMaster Center""";
    final url = Uri.parse(
      "https://wa.me/$cleanPhone?text=${Uri.encodeComponent(message)}",
    );

    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    }
  }

  Future<void> deleteTicket(String id) async {
    emit(const MaintenanceTicketLoading());
    final result = await deleteTicketUseCase(id);
    result.fold(
      (failure) => emit(MaintenanceTicketError(message: failure.message)),
      (_) => getAllTickets(),
    );
  }
}


/**
 * Repair Summary:
• Name: "Ahmad"
• Phone: "+964 770 123 4567"
• Device: "iPhone 13 Pro"
• Issue: "Screen flicker and touch response delay after physical drop"
 * 
 */