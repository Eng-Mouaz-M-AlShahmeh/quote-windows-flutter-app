/* Developed by: Eng Mouaz M. Al-Shahmeh */
import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider_windows/path_provider_windows.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
// import 'package:printing/printing.dart';
import 'package:flutter_toastr/flutter_toastr.dart';

Future<void> printPdfSmall(BuildContext context,String companyName) async {

  final pw.Document pdf = pw.Document();
  var arabicFont = pw.Font.ttf(await rootBundle.load('assets/fonts/Almarae.ttf'));

  var image1 = await rootBundle.load('assets/images/fatora/01.png');
  var imagePage1 = image1.buffer
      .asUint8List(image1.offsetInBytes, image1.lengthInBytes);

  var image2 = await rootBundle.load('assets/images/fatora/02.png');
  var imagePage2 = image2.buffer
      .asUint8List(image2.offsetInBytes, image2.lengthInBytes);

  var image3 = await rootBundle.load('assets/images/fatora/03.png');
  var imagePage3 = image3.buffer
      .asUint8List(image3.offsetInBytes, image3.lengthInBytes);

  var image4 = await rootBundle.load('assets/images/fatora/04.png');
  var imagePage4 = image4.buffer
      .asUint8List(image4.offsetInBytes, image4.lengthInBytes);

  var image5 = await rootBundle.load('assets/images/fatora/05.png');
  var imagePage5 = image5.buffer
      .asUint8List(image5.offsetInBytes, image5.lengthInBytes);

  var image6 = await rootBundle.load('assets/images/fatora/06.png');
  var imagePage6 = image6.buffer
      .asUint8List(image6.offsetInBytes, image6.lengthInBytes);

  var image7 = await rootBundle.load('assets/images/fatora/07.png');
  var imagePage7 = image7.buffer
      .asUint8List(image7.offsetInBytes, image7.lengthInBytes);

  var image8 = await rootBundle.load('assets/images/fatora/08.png');
  var imagePage8 = image8.buffer
      .asUint8List(image8.offsetInBytes, image8.lengthInBytes);

  var image9 = await rootBundle.load('assets/images/fatora/09.png');
  var imagePage9 = image1.buffer
      .asUint8List(image9.offsetInBytes, image9.lengthInBytes);

  var image10 = await rootBundle.load('assets/images/fatora/10.png');
  var imagePage10 = image1.buffer
      .asUint8List(image10.offsetInBytes, image10.lengthInBytes);

  var image11 = await rootBundle.load('assets/images/fatora/11.png');
  var imagePage11 = image11.buffer
      .asUint8List(image11.offsetInBytes, image11.lengthInBytes);

  var image12 = await rootBundle.load('assets/images/fatora/12.png');
  var imagePage12 = image12.buffer
      .asUint8List(image12.offsetInBytes, image12.lengthInBytes);

  var image13 = await rootBundle.load('assets/images/fatora/13.png');
  var imagePage13 = image13.buffer
      .asUint8List(image13.offsetInBytes, image13.lengthInBytes);

  var image14 = await rootBundle.load('assets/images/fatora/14.png');
  var imagePage14 = image14.buffer
      .asUint8List(image14.offsetInBytes, image14.lengthInBytes);


  // inch = 72.0  -- mm = inch / 25.4  -- pos w/h = 40.0 * 57

  pdf.addPage(pw.MultiPage(
      // margin: const pw.EdgeInsets.fromLTRB(5, 5, 5, 5),
      theme: pw.ThemeData.withFont(
        base: arabicFont,
      ),
      pageFormat: const PdfPageFormat(
          210.0 * (72.0 / 25.4), 297.0 * (72.0 / 25.4),
          // marginAll: 8.0 * (72.0 / 25.4)
          ),
      textDirection: pw.TextDirection.rtl,
      build: (context) {
        return [
          pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.center,
            children: [
              pw.Image(pw.MemoryImage(imagePage1),
                  width: 596, height: 841.8897637795277, fit: pw.BoxFit.fill),
            ],
          ),

          pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.center,
            children: [
              pw.Stack(
                children: [
                  pw.Image(pw.MemoryImage(imagePage2),
                      width: 596, height: 841.8897637795277, fit: pw.BoxFit.fill),

                  pw.Padding(
                    padding: const pw.EdgeInsets.fromLTRB(200, 218, 200, 100),
                    child: pw.Text(companyName,
                      textAlign: pw.TextAlign.right,
                      textDirection: pw.TextDirection.rtl,
                      style: pw.TextStyle(
                        font: arabicFont,
                        fontSize: 20,
                        color: PdfColor.fromHex('#25626F'),
                      ),
                    ),
                  )

                ]
              )

            ],
          ),

          pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.center,
            children: [
              pw.Image(pw.MemoryImage(imagePage3),
                  width: 596, height: 841.8897637795277, fit: pw.BoxFit.fill),
            ],
          ),

          pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.center,
            children: [
              pw.Image(pw.MemoryImage(imagePage4),
                  width: 596, height: 841.8897637795277, fit: pw.BoxFit.fill),
            ],
          ),

          pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.center,
            children: [
              pw.Image(pw.MemoryImage(imagePage5),
                  width: 596, height: 841.8897637795277, fit: pw.BoxFit.fill),
            ],
          ),

          pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.center,
            children: [
              pw.Image(pw.MemoryImage(imagePage6),
                  width: 596, height: 841.8897637795277, fit: pw.BoxFit.fill),
            ],
          ),

          pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.center,
            children: [
              pw.Image(pw.MemoryImage(imagePage7),
                  width: 596, height: 841.8897637795277, fit: pw.BoxFit.fill),
            ],
          ),

          pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.center,
            children: [
              pw.Image(pw.MemoryImage(imagePage8),
                  width: 596, height: 841.8897637795277, fit: pw.BoxFit.fill),
            ],
          ),

        ];
      }));

  imageCache!.clear();
  imageCache!.clearLiveImages();

  pdf.addPage(pw.MultiPage(
    // margin: const pw.EdgeInsets.fromLTRB(5, 5, 5, 5),
      theme: pw.ThemeData.withFont(
        base: arabicFont,
      ),
      pageFormat: const PdfPageFormat(
        210.0 * (72.0 / 25.4), 297.0 * (72.0 / 25.4),
        // marginAll: 8.0 * (72.0 / 25.4)
      ),
      textDirection: pw.TextDirection.rtl,
      build: (context) {

        return [

          pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.center,
            children: [
              pw.Image(pw.MemoryImage(imagePage9),
                  width: 596, height: 841.8897637795277, fit: pw.BoxFit.fill),
            ],
          ),

          pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.center,
            children: [
              pw.Image(pw.MemoryImage(imagePage10),
                  width: 596, height: 841.8897637795277, fit: pw.BoxFit.fill),
            ],
          ),

          pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.center,
            children: [
              pw.Image(pw.MemoryImage(imagePage11),
                  width: 596, height: 841.8897637795277, fit: pw.BoxFit.fill),
            ],
          ),

          pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.center,
            children: [
              pw.Image(pw.MemoryImage(imagePage12),
                  width: 596, height: 841.8897637795277, fit: pw.BoxFit.fill),
            ],
          ),

          pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.center,
            children: [
              pw.Image(pw.MemoryImage(imagePage13),
                  width: 596, height: 841.8897637795277, fit: pw.BoxFit.fill),
            ],
          ),

          pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.center,
            children: [
              pw.Image(pw.MemoryImage(imagePage14),
                  width: 596, height: 841.8897637795277, fit: pw.BoxFit.fill),
            ],
          ),

        ];
      }));

  final PathProviderWindows provider = PathProviderWindows();
  var path = '';
  try {
    path = (await provider.getDownloadsPath())!;
  } catch (exception) {
    path = 'Failed to get downloads directory: $exception';
  }
  final String fullPath = '$path/FatoraQoute.pdf';
  final File file = File(fullPath);
  await file.writeAsBytes(await pdf.save());

  FlutterToastr.show("تم حفظ ملف عرض السعر في التنزيلات", context, duration: FlutterToastr.lengthShort, position:  FlutterToastr.center, backgroundColor: Colors.green);

  // await Printing.sharePdf(
  //   bytes: file,
  //   onLayout: (PdfPageFormat format) async => await pdf.save(),
  // );
  // await Printing.layoutPdf(
  //   onLayout: (PdfPageFormat format) async => await pdf.save(),
  // );


}
