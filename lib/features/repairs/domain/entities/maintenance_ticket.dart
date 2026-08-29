import 'package:equatable/equatable.dart';
import 'package:fix_master/features/repairs/domain/enums/ticket_status.dart';

class MaintenanceTicket extends Equatable {
  final int? isarId;
  final String? id;
  final String customerName;
  final String phoneNumber;
  final String deviceModel;
  final String issueDescription;
  final DateTime receivedDate;
  final TicketStatus status;
  final bool isWhatsAppSent;

  const MaintenanceTicket({
    this.isarId,
    this.id,
    required this.customerName,
    required this.phoneNumber,
    required this.deviceModel,
    required this.issueDescription,
    required this.receivedDate,
    this.status = TicketStatus.underInspection,
    this.isWhatsAppSent = false,
  });

  MaintenanceTicket copyWith({
    int? isarId,
    String? id,
    String? customerName,
    String? phoneNumber,
    String? deviceModel,
    String? issueDescription,
    DateTime? receivedDate,
    TicketStatus? status,
    bool? isWhatsAppSent,
    
  }) {
    return MaintenanceTicket(
      isarId: isarId ?? this.isarId,
      id: id ?? this.id,
      customerName: customerName ?? this.customerName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      deviceModel: deviceModel ?? this.deviceModel,
      issueDescription: issueDescription ?? this.issueDescription,
      receivedDate: receivedDate ?? this.receivedDate,
      status: status ?? this.status,
      isWhatsAppSent: isWhatsAppSent ?? this.isWhatsAppSent,
    );
  }

  @override
  List<Object?> get props => [
    isarId,
    id,
    customerName,
    phoneNumber,
    deviceModel,
    issueDescription,
    receivedDate,
    status,
    isWhatsAppSent,
  ];
}
