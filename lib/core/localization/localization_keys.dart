import 'package:get/get.dart';

class LocalizationKeys extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'title': 'Title',
      'description': 'Description',
      'imageUrl': 'Image URL',
      'save': 'Kaydet',
      "addNewTask": "Add New Task",
      "haveSomeProblem": "A problem was encountered. Please try again later.",
      "taskDetail": "Task Detail",
      "delete": "Delete",
      "taskList": "Task List",
      "tasks": "Tasks",
    },
    'tr_TR': {
      'title': 'Başlık',
      'description': 'Açıklama',
      'save': 'Kaydet',
      "addNewTask": "Yeni Görev Ekle",
      "haveSomeProblem": "Bir problemle karşılaşıldı. Lütfen daha sonra tekrar dene.",
      "taskDetail": "Görev Detayı",
      "delete": "Sil",
      'imageUrl': 'Resim Uzantısı',
      "taskList": "Görev Listesi",
      "tasks": "Görevler",
    }
  };
}