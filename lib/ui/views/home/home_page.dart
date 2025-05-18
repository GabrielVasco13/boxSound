import 'package:box_sound/viewmodels/music/music_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<MusicViewmodel>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Minhas Músicas')),
      body: ListView.builder(
        itemCount: viewModel.musics.length,
        itemBuilder: (context, index) {
          final music = viewModel.musics[index];
          return ListTile(
            title: Text(music.title),
            subtitle: Text(music.path),
            trailing: IconButton(
              icon: Icon(
                music.isFavorite ? Icons.favorite : Icons.favorite_border,
              ),
              onPressed: () => viewModel.addFavorite(index),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
