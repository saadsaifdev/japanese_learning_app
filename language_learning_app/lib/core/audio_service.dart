import 'package:audioplayers/audioplayers.dart';

class AudioService {
  AudioService._();

  static final AudioService instance = AudioService._();
  final AudioPlayer _player = AudioPlayer();

  Future<void> playAsset(String path) async {
    print('Playing audio asset: $path');
    await _player.stop();
    await _player.play(AssetSource(path));
  }

  Future<void> dispose() async {
    await _player.dispose();
  }
}
