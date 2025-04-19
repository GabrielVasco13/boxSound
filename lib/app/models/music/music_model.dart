import 'package:hive/hive.dart';

class MusicModel extends HiveObject {
  MusicModel({
    required this.title,
    required this.path,
    this.isFavorite = false,
  });

  @HiveField(0)
  final String title;

  @HiveField(1)
  final String path;

  @HiveField(2)
  final bool isFavorite;

  MusicModel copyWith({bool? isFavorite}) {
    return MusicModel(
      title: title,
      path: path,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}
