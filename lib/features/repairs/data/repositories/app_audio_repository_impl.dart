import 'package:fix_master/features/repairs/domain/repositories/app_audio_repository.dart';

import 'package:audioplayers/audioplayers.dart';

class AppAudioRepositoryImpl implements AppAudioRepository {
  final AudioPlayer audoiPlayer;
  AppAudioRepositoryImpl(this.audoiPlayer);

  @override
  Future<void> playAudioEffect(String soundPath) async {
    try {
      await audoiPlayer.play(AssetSource(soundPath));
    } catch (_) {}
  }
}
