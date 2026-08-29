import 'package:fix_master/features/repairs/data/models/maintenance_ticket_model.dart';
import 'package:isar_community/isar.dart';

abstract class MaintenanceTicketLocalDataSource {
  Future<void> saveTicket(MaintenanceTicketModel ticket);
  Future<List<MaintenanceTicketModel>> getTickets();
  Future<MaintenanceTicketModel?> getTicketById(String id);
  Future<void> deleteTicket(String id);
}

class MaintenanceTicketLocalDataSourceImpl
    implements MaintenanceTicketLocalDataSource {
  final Isar isar;

  MaintenanceTicketLocalDataSourceImpl({required this.isar});

  @override
  Future<void> saveTicket(MaintenanceTicketModel ticket) async {
    await isar.writeTxn(() async {
      await isar.maintenanceTicketModels.put(ticket);
    });
  }

  @override
  Future<List<MaintenanceTicketModel>> getTickets() async {
    return await isar.maintenanceTicketModels.where().findAll();
  }

  @override
  Future<MaintenanceTicketModel?> getTicketById(String id) async {
    return await isar.maintenanceTicketModels
      .filter()
      .idEqualTo(id)
      .findFirst();
  }

  @override  
  Future<void> deleteTicket(String id) async {
    await isar.writeTxn(() async {
      await isar.maintenanceTicketModels
      .filter()
      .idEqualTo(id)
      .deleteAll();
    });
  }
}
