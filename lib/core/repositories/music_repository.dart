import 'package:box_sound/models/music/music_model.dart';
import 'package:hive/hive.dart';

class MusicRepository {
  final Box<MusicModel> _musicBox = Hive.box<MusicModel>('musics');

  List<MusicModel> getAllMusics() => _musicBox.values.toList();

  Future<void> addMusic(MusicModel music) async {
    await _musicBox.add(music);
  }

  Future<void> updateMusic(int index, MusicModel music) async {
    await _musicBox.putAt(index, music);
  }

  Future<void> deleteMusic(int index) async {
    await _musicBox.deleteAt(index);
  }
}
