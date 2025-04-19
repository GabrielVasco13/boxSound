import 'package:box_sound/app_widget.dart';
import 'package:box_sound/core/repositories/music_repository.dart';
import 'package:box_sound/models/music/music_model.dart';
import 'package:box_sound/viewmodels/music/music_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final dir = await getApplicationDocumentsDirectory();
  Hive.init(dir.path);
  Hive.registerAdapter(MusicModelAdapter());
  await Hive.openBox<MusicModel>('musics');

  runApp(
    ChangeNotifierProvider(
      create: (_) => MusicViewmodel(MusicRepository())..loadMusics(),
      child: const MaterialApp(
        home: AppWidget(),
      ),
    ),
  );
}
