import 'package:audioplayers/audioplayers.dart';
import 'package:fix_master/features/repairs/data/datasources/maintenance_ticket_local_data_source.dart';
import 'package:fix_master/features/repairs/data/repositories/app_audio_repository_impl.dart';
import 'package:fix_master/features/repairs/data/repositories/maintenance_ticket_repository_impl.dart';
import 'package:fix_master/features/repairs/domain/repositories/app_audio_repository.dart';
import 'package:fix_master/features/repairs/domain/repositories/maintenance_ticket_repository.dart';
import 'package:fix_master/features/repairs/domain/usecases/create_ticket_usecase.dart';
import 'package:fix_master/features/repairs/domain/usecases/delete_ticket_usecase.dart';
import 'package:fix_master/features/repairs/domain/usecases/get_all_tickets_usecase.dart';
import 'package:fix_master/features/repairs/domain/usecases/get_ticket_by_id_usecase.dart';
import 'package:fix_master/features/repairs/domain/usecases/play_audio_effect_usecase.dart';
import 'package:fix_master/features/repairs/domain/usecases/update_ticket_usecase.dart';
import 'package:fix_master/features/repairs/presentation/cubit/maintenance_ticket_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:isar_community/isar.dart';

final sl = GetIt.instance;

Future<void> initServiceLocator() async {
  // (Data Sources & External Tools)
  sl.registerLazySingleton<MaintenanceTicketLocalDataSource>(
    () => MaintenanceTicketLocalDataSourceImpl(isar: sl<Isar>()),
  );

  sl.registerLazySingleton<AudioPlayer>(() => AudioPlayer());

  // (Repositories)
  sl.registerLazySingleton<MaintenanceTicketRepository>(
    () => MaintenanceTicketRepositoryImpl(
      localDataSource: sl<MaintenanceTicketLocalDataSource>(),
    ),
  );

  sl.registerLazySingleton<AppAudioRepository>(() => AppAudioRepositoryImpl(sl<AudioPlayer>()));

  // (Use Cases)
  sl.registerLazySingleton(
    () => GetAllTicketUseCase(sl<MaintenanceTicketRepository>()),
  );
  sl.registerLazySingleton(
    () => GetTicketByIdUsecase(sl<MaintenanceTicketRepository>()),
  );
  sl.registerLazySingleton(
    () => CreateTicketUsecase(sl<MaintenanceTicketRepository>()),
  );
  sl.registerLazySingleton(
    () => UpdateTicketUsecase(sl<MaintenanceTicketRepository>()),
  );
  sl.registerLazySingleton(
    () => DeleteTicketUsecase(sl<MaintenanceTicketRepository>()),
  );
  sl.registerFactory<PlayAudioEffectUsecase>(
    () => PlayAudioEffectUsecase(sl<AppAudioRepository>())
  );

  // Cubits / Blocs
  sl.registerFactory(
    () => MaintenanceTicketCubit(
      getAllTicketUseCase: sl<GetAllTicketUseCase>(),
      getTicketByIdUsecase: sl<GetTicketByIdUsecase>(),
      createTicketUsecase: sl<CreateTicketUsecase>(),
      updateTicketUsecase: sl<UpdateTicketUsecase>(),
      deleteTicketUseCase: sl<DeleteTicketUsecase>(),
    ),
  );
}
