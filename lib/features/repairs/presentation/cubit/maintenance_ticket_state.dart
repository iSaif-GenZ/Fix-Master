import 'package:equatable/equatable.dart';
import 'package:fix_master/features/repairs/domain/entities/maintenance_ticket.dart';

sealed class MaintenanceTicketState extends Equatable {
  const MaintenanceTicketState();

  @override
  List<Object?> get props => [];
}

final class MaintenanceTicketInitial extends MaintenanceTicketState {
  const MaintenanceTicketInitial();
}

final class MaintenanceTicketLoading extends MaintenanceTicketState {
  const MaintenanceTicketLoading();
}

final class MaintenanceTicketLoaded extends MaintenanceTicketState {
  final List<MaintenanceTicket> tickets;

  const MaintenanceTicketLoaded({required this.tickets});

  @override
  List<Object?> get props => [tickets];
}

final class MaintenanceTicketError extends MaintenanceTicketState {
  final String message;

  const MaintenanceTicketError({required this.message});

  @override
  List<Object?> get props => [message];
}