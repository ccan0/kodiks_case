abstract class ILocalDataBase {
  Future<List> readData({required String boxName});

  Future<void> writeData({required String boxName, dynamic value});

  Future<void> deleteData({dynamic value});
}