import 'package:flutter/material.dart';
import 'package:quiz_app/view/components/global_appbar_widget.dart';

class ReviewScore extends StatelessWidget {
  const ReviewScore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(title: "Review Your Answer"),

    ) ;
  }
}
