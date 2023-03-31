


import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:quiz_app/model/suject_xm/suject_model.dart';

class ApiService {
  // static var client = http.Client();
  Future<List<SubjectiveExam>> fatchPost() async {
    final response = await http.get(
        Uri.parse("https://jsonplaceholder.typicode.com/albums"));
    if (response.statusCode == 200) {
      final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
      return parsed.map<SubjectiveExam>((json) => SubjectiveExam.fromJson(json))
          .toList();
    } else {
      throw Exception("failed to load post");
    }
  }
}

class SubController extends GetxController {

  var isLoaded = true.obs;
  var postList = <SubjectiveExam>[].obs;

  @override
  void onInit() {
    getAllPOst();
    super.onInit();
  }

  void getAllPOst() async {
    var data = await ApiService().fatchPost();
    if (data.length > 0) {
      postList.clear();
      isLoaded(false);
      postList.addAll(data);
    }
  }
}

