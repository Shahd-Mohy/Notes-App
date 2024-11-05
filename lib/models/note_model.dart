import 'package:hive/hive.dart';
part 'note_model.g.dart'; 
//Like import ,for the hive generating
// Run this "flutter packages pub run build_runner build" to generate it

@HiveType(typeId: 0) // Uniqe for every Class

class NoteModel extends HiveObject {
  @HiveField(
      0) //Uniqe for the class Another Class can have the same HiveField index
  final String title;
  @HiveField(1)
  final String subTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  NoteModel(
      {required this.title,
      required this.subTitle,
      required this.date,
      required this.color});
}
