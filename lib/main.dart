import 'package:box_sound/app/app_widget.dart';
import 'package:box_sound/app/viewmodels/welcome/welcome_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
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
