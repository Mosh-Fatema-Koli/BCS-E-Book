import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

Future<http.Response?> generalPost({required String url, required Map<String, String> body}) async {
  final logger = Logger();
  Map<String, String> header = {
    'Accept': 'application/json',
  };
  var response = await http.post(Uri.parse(url), headers: header, body: body);
  logger.d(url);
  logger.d(response.body);
  if (response.statusCode == 200) {
    return response;
  } else {
    //errorToast("Something went wrong ${response.statusCode}");
    return null;
  }
}

Future<http.Response?> generalGet({required String url}) async {
  final logger = Logger();
  Map<String, String> header = {
    'Accept': 'application/json',
  };
  var response = await http.get(Uri.parse(url), headers: header);
  logger.d(url);
  logger.d(response.body);
  if (response.statusCode == 200) {
    return response;
  } else {
    //errorToast("Something went wrong ${response.statusCode}");
    return null;
  }
}

/* Example of how to get any api through this method

getRandomAPI()async{
var response = await generalGet(url: ApiUrls.login);
if(response==null){
//show error toast or something
return;
}
//parse your response here.
}

* */
