import 'package:fix_master/features/repairs/domain/entities/maintenance_ticket.dart';
import 'package:fix_master/features/repairs/domain/enums/ticket_status.dart';
import 'package:isar_community/isar.dart';

part 'maintenance_ticket_model.g.dart';

@collection
class MaintenanceTicketModel {
  Id isarId = Isar.autoIncrement;

  final String? id;
  final String customerName;
  final String phoneNumber;
  final String deviceModel;
  final String issueDescription;
  final DateTime receivedDate;
  // تخزين الحالة كـ String يمنع أخطاء الـ Generator تماماً
  final String statusValue;
  bool isWhatsAppSent = false;

  MaintenanceTicketModel({
    this.isarId = Isar.autoIncrement,
    this.id,
    required this.customerName,
    required this.phoneNumber,
    required this.deviceModel,
    required this.issueDescription,
    required this.receivedDate,
    required this.statusValue,
    required this.isWhatsAppSent,
  });

  factory MaintenanceTicketModel.fromEntity(MaintenanceTicket entity) {
    return MaintenanceTicketModel(
      isarId: entity.isarId ?? Isar.autoIncrement,
      id: entity.id,
      customerName: entity.customerName,
      phoneNumber: entity.phoneNumber,
      deviceModel: entity.deviceModel,
      issueDescription: entity.issueDescription,
      receivedDate: entity.receivedDate,
      statusValue: entity.status.name,
      isWhatsAppSent: entity.isWhatsAppSent,
    );
  }

  MaintenanceTicket toEntity() {
    return MaintenanceTicket(
      isarId: isarId,
      id: id,
      customerName: customerName,
      phoneNumber: phoneNumber,
      deviceModel: deviceModel,
      issueDescription: issueDescription,
      receivedDate: receivedDate,
      status: TicketStatus.values.firstWhere(
        (e) => e.name == statusValue,
        orElse: () => TicketStatus.underInspection,
      ),
      isWhatsAppSent: isWhatsAppSent,
    );
  }
}