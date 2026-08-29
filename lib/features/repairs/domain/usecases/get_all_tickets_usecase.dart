import 'package:dartz/dartz.dart';
import 'package:fix_master/core/error/failures.dart';
import 'package:fix_master/features/repairs/domain/entities/maintenance_ticket.dart';
import 'package:fix_master/features/repairs/domain/repositories/maintenance_ticket_repository.dart';

class GetAllTicketUseCase {
  final MaintenanceTicketRepository repository;
  GetAllTicketUseCase(this.repository);
  Future<Either<Failure, List<MaintenanceTicket>>> call() async {
    return await repository.getAllTickets();
  }
}