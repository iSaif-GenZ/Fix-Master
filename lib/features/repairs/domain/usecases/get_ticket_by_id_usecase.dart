import 'package:dartz/dartz.dart';
import 'package:fix_master/core/error/failures.dart';
import 'package:fix_master/features/repairs/domain/entities/maintenance_ticket.dart';
import 'package:fix_master/features/repairs/domain/repositories/maintenance_ticket_repository.dart';

class GetTicketByIdUsecase {
  final MaintenanceTicketRepository repository;
  GetTicketByIdUsecase(this.repository);
  Future<Either<Failure, MaintenanceTicket>> call(String id) async {
    return await repository.getTicketById(id);
  }
}
