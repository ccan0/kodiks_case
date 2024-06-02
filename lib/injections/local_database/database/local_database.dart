import 'package:hive/hive.dart';
import 'package:kodiks_case/injections/local_database/type/local_database_interface.dart';
import 'package:kodiks_case/models/task_model/task_model.dart';
import 'package:path_provider/path_provider.dart';

class LocalDatabase implements ILocalDataBase {
  static final LocalDatabase _instance = LocalDatabase._internal();

  factory LocalDatabase() {
    return _instance;
  }

  LocalDatabase._internal();

  Future<void> init() async {
    final directory = await getApplicationDocumentsDirectory();

    Hive.init(directory.path);

    Hive.registerAdapter(TaskModelAdapter());
  }

  @override
  Future<List> readData({required String boxName}) async {
    try {
      final box = await Hive.openBox(boxName);

      return box.values.toList();
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> writeData({required String boxName, dynamic value}) async {
    try {
      final box = await Hive.openBox(boxName);

      box.add(value);
    } on Exception catch (_) {
      rethrow;
    }
  }

  @override
  Future<void> deleteData({dynamic value}) async {
    try {
      value.delete();

    } on Exception catch (_) {
      rethrow;
    }
  }
}
