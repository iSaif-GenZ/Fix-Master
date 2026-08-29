import 'package:dartz/dartz.dart';
import 'package:fix_master/core/error/failures.dart';
import 'package:fix_master/features/repairs/domain/entities/maintenance_ticket.dart';

abstract class MaintenanceTicketRepository {
  Future<Either<Failure, List<MaintenanceTicket>>> getAllTickets();
  Future<Either<Failure, MaintenanceTicket>> getTicketById(String id);
  Future<Either<Failure, MaintenanceTicket>> createTicket(MaintenanceTicket ticket);
  Future<Either<Failure, MaintenanceTicket>> updateTicket(MaintenanceTicket ticket);
  Future<Either<Failure, void>> deleteTicket(String id);
}