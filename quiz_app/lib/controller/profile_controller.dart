import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ProfileController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final mobileController = TextEditingController();
  final cityController = TextEditingController();
  var selectedDate = DateTime.now();
  var formattedDate = ''.obs;

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(context: context, initialDate: selectedDate, firstDate: DateTime(2010), lastDate: DateTime(2030));

    if (picked != null && picked != selectedDate) {
      selectedDate= picked;
      formattedDate.value = DateFormat('yyyy-MM-dd').format(selectedDate);
    }
  }
}
