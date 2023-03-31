
import 'package:flutter/material.dart';
import 'package:quiz_app/view/components/global_appbar_widget.dart';
class PdfPage extends StatefulWidget {

  final String subjectName;

 PdfPage({Key? key,required this.subjectName}) : super(key: key);

  @override
  State<PdfPage> createState() => _PdfPageState();
}

class _PdfPageState extends State<PdfPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(title: "${widget.subjectName}"),

    );
  }
}
