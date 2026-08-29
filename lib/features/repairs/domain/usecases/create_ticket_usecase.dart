import 'package:dartz/dartz.dart';
import 'package:fix_master/core/error/failures.dart';
import 'package:fix_master/features/repairs/domain/entities/maintenance_ticket.dart';
import 'package:fix_master/features/repairs/domain/repositories/maintenance_ticket_repository.dart';

class CreateTicketUsecase {
  final MaintenanceTicketRepository repository;
  CreateTicketUsecase(this.repository);

  Future<Either<Failure, MaintenanceTicket>> call(
    MaintenanceTicket ticket,
  ) async {
    return await repository.createTicket(ticket);
  }
}
