import 'package:fix_master/features/repairs/domain/repositories/app_audio_repository.dart';

class PlayAudioEffectUsecase {
  final AppAudioRepository repository;
  PlayAudioEffectUsecase(this.repository);
  Future<void> call(String soundPath) async {
    return await repository.playAudioEffect(soundPath);
  }
}