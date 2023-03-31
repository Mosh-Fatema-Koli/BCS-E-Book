import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:quiz_app/api/api_helper.dart';
import 'package:quiz_app/api/api_urls.dart';
import 'package:quiz_app/model/current_affairs_model.dart';
import 'package:quiz_app/model/ebook_model.dart';
import 'package:quiz_app/view/screen/learnPage/pdf_viewer.dart';
import 'package:thumbnailer/thumbnailer.dart';

import '../../../model/pdf_model.dart';
import '../../components/global_appbar_widget.dart';

class CurrentAffairsDetailsPage extends StatelessWidget {
  final String endPoint;
  final String subjectName;

  const CurrentAffairsDetailsPage({Key? key, required this.endPoint, required this.subjectName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(
        title: subjectName,
      ),
      body: FutureBuilder<CurrentAffairsModel?>(
        future: getPdfs(),
        builder: (context, AsyncSnapshot<CurrentAffairsModel?> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.data.length,
                itemBuilder: (context, index) {
                  var pdf = snapshot.data!.data[index];
                  return Padding(
                    padding: const EdgeInsets.all(5),
                    child: Card(
                      color: HexColor("#E8F6F9"),
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: ListTile(
                        onTap: () {
                          Get.to(
                            () => PdfViewer(
                              url: ApiUrl.baseUrl + pdf.pdfFilePath,
                              pdfName: pdf.title,
                            ),
                          );
                        },
                        leading: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey.shade300,
                            ),
                          ),
                          height: 100.h,
                          width: 50.w,
                          child: Thumbnail(
                            dataResolver: () async {
                              var url = ApiUrl.baseUrl + pdf.pdfFilePath;
                              //return (await DefaultAssetBundle.of(context).load('assets/samples/pdf-sample.pdf')).buffer.asUint8List();
                              return (await NetworkAssetBundle(Uri.parse(url)).load(url)).buffer.asUint8List();
                            },
                            mimeType: 'application/pdf',
                            widgetSize: 100.r,
                          ),
                        ),
                        title: Text(
                          pdf.title,
                        ),
                        subtitle: Text(
                          pdf.monthYear,
                        ),
                      ),
                    ),
                  );
                },
              );
            }
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  Future<CurrentAffairsModel?> getPdfs() async {
    var response = await tokenBasedGet(url: ApiUrl.apiUrl + endPoint);
    if (response == null) {
      return null;
    } else {
      return currentAffairsModelFromJson(response.body);
    }
  }
}
