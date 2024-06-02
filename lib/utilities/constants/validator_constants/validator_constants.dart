class ValidatorConstants {
  static final ValidatorConstants _instance = ValidatorConstants._internal();

  factory ValidatorConstants() {
    return _instance;
  }

  ValidatorConstants._internal();

  String? nullOrEmpty(String? value) {
    if(value == null || value.isEmpty) return "Lütfen alanı doldurun";

    return null;
  }

}