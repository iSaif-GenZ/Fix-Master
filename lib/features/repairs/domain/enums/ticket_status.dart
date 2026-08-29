import 'dart:ui';

enum TicketStatus {
  underInspection, // قيد الفحص
  underRepair, // قيد الإصلاح
  readyForDelivery, // جاهز للتسليم
  delivered,
}

extension TicketStatusX on TicketStatus {
  String get displayName {
    switch (this) {
      case TicketStatus.underInspection:
        return 'Under Inspection';
      case TicketStatus.underRepair:
        return 'Under Repair';
      case TicketStatus.readyForDelivery:
        return 'Ready For Delivery';
      case TicketStatus.delivered:
        return 'delivered';
    }
  }
}
