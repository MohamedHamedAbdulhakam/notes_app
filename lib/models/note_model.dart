import 'package:hive/hive.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  String Title;
  @HiveField(1)
  String SubTitle;
  @HiveField(2)
  final String Date;
  @HiveField(3)
  int color;

  NoteModel(
      {required this.Title,
      required this.SubTitle,
      required this.Date,
      required this.color});
}
