import 'package:box_sound/app_widget.dart';
import 'package:box_sound/models/music/music_model.dart';
import 'package:box_sound/viewmodels/welcome/welcome_view_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  // Register the adapter
  Hive.registerAdapter(MusicModelAdapter());
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => WelcomeViewModel(),
        ),
      ],
      child: const AppWidget(),
    ),
  );
}
