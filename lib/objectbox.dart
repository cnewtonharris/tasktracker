import 'package:tasktracker/objectbox.g.dart';

class ObjectBox{
  late final Store store;

  late final Box tagBox;
  late final Box taskBox;

  ObjectBox._create(this.store);

  static Future<ObjectBox> create() async{
    final store = await openStore();
    return ObjectBox._create(store);
  }
  }
