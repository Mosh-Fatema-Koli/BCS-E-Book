import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:get/get.dart';

import '../../components/global_appbar_widget.dart';

class PdfViewer extends StatelessWidget {
  final String url;
  final String pdfName;
  var currentPage = '1'.obs;
  var currentTotal = ''.obs;

  PdfViewer({Key? key, required this.url, required this.pdfName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appbarWidget(
        title: pdfName,
      ),
      body: PDF(
        enableSwipe: true,
        swipeHorizontal: false,
        autoSpacing: false,
        pageFling: false,
        fitEachPage: false,
        fitPolicy: FitPolicy.BOTH,
        onError: (error) {
          print(error.toString());
        },
        onPageError: (page, error) {},
        onPageChanged: (int? page, int? total) {
          currentPage.value = (page! + 1).toString();
          currentTotal.value = total.toString();
        },
      ).fromUrl(url),
      bottomNavigationBar: Obx(
        () => Text(
          '${currentPage.value}/${currentTotal.value}',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
