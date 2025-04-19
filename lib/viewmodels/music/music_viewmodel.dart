// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:box_sound/core/repositories/music_repository.dart';
import 'package:box_sound/models/music/music_model.dart';

class MusicViewmodel extends ChangeNotifier {
  MusicViewmodel(this._musicRepository);
  final MusicRepository _musicRepository;

  List<MusicModel> musics = [];

  void loadMusics() {
    musics = _musicRepository.getAllMusics();
    notifyListeners();
  }

  Future addMusic(MusicModel music) async {
    await _musicRepository.addMusic(music);
    loadMusics();
  }

  Future addFavorite(int index) async {
    final music = musics[index];
    final updatedMusic = music.copyWith(isFavorite: !music.isFavorite);
    await _musicRepository.updateMusic(index, updatedMusic);
    loadMusics();
  }
}
