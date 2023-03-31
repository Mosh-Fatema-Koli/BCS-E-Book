class ApiUrl {
  static const String baseUrl = "http://bcsebook.wcnltd.com/"; //url
  static const String api = "api/"; //api endpoint
  static const String apiUrl = baseUrl + api; //api url
  static const String imageUrl = baseUrl; //imageUrl url

  static const String login = "${apiUrl}login"; //login
  static const String register = "${apiUrl}register"; //register
  /*Token based*/
  static const String user = "${apiUrl}user"; //user
}

