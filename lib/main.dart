import 'package:fix_master/core/di/service_locator.dart';
import 'package:fix_master/core/routes/app_routes.dart';
import 'package:fix_master/core/theme/app_colors.dart';
import 'package:fix_master/core/theme/app_themes.dart';
import 'package:fix_master/features/repairs/data/models/maintenance_ticket_model.dart';
import 'package:fix_master/features/repairs/presentation/cubit/maintenance_ticket_cubit.dart';
import 'package:fix_master/features/repairs/presentation/pages/add_maintenance_ticket.dart';
import 'package:fix_master/features/repairs/presentation/pages/home_page.dart';
import 'package:fix_master/features/repairs/presentation/pages/splash_page.dart';
import 'package:fix_master/features/repairs/presentation/pages/ticket_details_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:isar_community/isar.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final dir = await getApplicationDocumentsDirectory();
  final isar = await Isar.open([
    MaintenanceTicketModelSchema,
  ], directory: dir.path);

  sl.registerSingleton<Isar>(isar);
  await initServiceLocator();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xFFF7FDF9),
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarContrastEnforced: false,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splashPage,
      title: "Fix Master",
      builder: (context, child) {
        final bottomPadding = MediaQuery.of(context).padding.bottom;

        return Column(
          children: [
            Expanded(
              child: MediaQuery.removePadding(
                context: context,
                removeBottom: true,
                child: child!,
              ),
            ),
            Container(
              color: const Color(0xFFE3EEF2),
              height: MediaQuery.of(context).padding.bottom,
            ),
          ],
        );
      },
      theme: AppThemes.lightTheme,
      themeMode: ThemeMode.light,
      routes: {
        AppRoutes.home: (context) => const HomePage(),
        AppRoutes.addMaintenanceTicket: (context) => AddMaintenanceTicket(),
        AppRoutes.splashPage: (context) => SplashPage(),
        AppRoutes.ticketDetailsSection: (context) => BlocProvider(
          create: (_) => sl<MaintenanceTicketCubit>(),
          child: const TicketDetailsSection(),
        ),
      },
    );
  }
}
