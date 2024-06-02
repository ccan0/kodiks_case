class UrlConstants {
  static final UrlConstants _instance = UrlConstants._internal();

  factory UrlConstants() {
    return _instance;
  }

  UrlConstants._internal();

  final String baseUrl = "https://jsonplaceholder.typicode.com";
  final String addTask = "/posts";

}