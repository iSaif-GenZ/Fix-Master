import 'package:dartz/dartz.dart';
import 'package:fix_master/core/error/failures.dart';
import 'package:fix_master/features/repairs/domain/repositories/maintenance_ticket_repository.dart';

class DeleteTicketUsecase {
  final MaintenanceTicketRepository repository;
  DeleteTicketUsecase(this.repository);
  Future<Either<Failure, void>> call(String id) async {
    return await repository.deleteTicket(id);
  }
}
