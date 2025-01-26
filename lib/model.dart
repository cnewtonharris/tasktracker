import 'package:objectbox/objectbox.dart';


@Entity()
 class Tag{
  int id;
  String name;

  Tag (this.name, {this.id = 0});
}

@Entity()
class Task{
  int id;
  String text;
  DateTime dateCreated;
  DateTime? dateFinished;

  Task(this.text, {this.id = 0, DateTime? dateCreated}) : dateCreated = dateCreated ?? DateTime.now();

  final tag = ToOne<Tag>();
}