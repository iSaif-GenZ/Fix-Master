import 'package:dartz/dartz.dart';
import 'package:fix_master/core/error/error_handler.dart';
import 'package:fix_master/core/error/failures.dart';
import 'package:fix_master/features/repairs/data/datasources/maintenance_ticket_local_data_source.dart';
import 'package:fix_master/features/repairs/data/models/maintenance_ticket_model.dart';
import 'package:fix_master/features/repairs/domain/entities/maintenance_ticket.dart';
import 'package:fix_master/features/repairs/domain/repositories/maintenance_ticket_repository.dart';

class MaintenanceTicketRepositoryImpl implements MaintenanceTicketRepository {
  final MaintenanceTicketLocalDataSource localDataSource;

  MaintenanceTicketRepositoryImpl({required this.localDataSource});

  @override
  Future<Either<Failure, List<MaintenanceTicket>>> getAllTickets() {
    return handleErrors(() async {
      // استخدام getTickets بدلاً من getAllTickets
      final models = await localDataSource.getTickets();
      return models.map((model) => model.toEntity()).toList();
    });
  }

  @override
  Future<Either<Failure, MaintenanceTicket>> getTicketById(String id) {
    return handleErrors(() async {
      final model = await localDataSource.getTicketById(id);
      if (model == null) {
        throw Exception('Ticket not found');
      }
      return model.toEntity();
    });
  }

  @override
  Future<Either<Failure, MaintenanceTicket>> createTicket(MaintenanceTicket ticket) {
    return handleErrors(() async {
      final model = MaintenanceTicketModel.fromEntity(ticket);
      // استخدام saveTicket بدلاً من createTicket
      await localDataSource.saveTicket(model);
      return model.toEntity();
    });
  }

  @override
  Future<Either<Failure, MaintenanceTicket>> updateTicket(MaintenanceTicket ticket) {
    return handleErrors(() async {
      final model = MaintenanceTicketModel.fromEntity(ticket);
      // استخدام saveTicket لأن Isar يعتمد put للإضافة والتحديث معاً
      await localDataSource.saveTicket(model);
      return model.toEntity();
    });
  }

  @override
  Future<Either<Failure, void>> deleteTicket(String id) {
    return handleErrors(() async {
      await localDataSource.deleteTicket(id);
    });
  }
}