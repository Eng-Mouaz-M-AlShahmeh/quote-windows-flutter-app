import 'package:flutter/material.dart';
import 'package:qoute/print_pdf.dart';
import 'package:qoute/quote.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'عرض سعر فاتورة الكترونية',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(title: 'عرض سعر الفاتورة الالكترونية'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var companyName = 'شركة مثال';
  var nProgFatora = 1;
  var nBae = 0;
  var nCashier = 0;
  var nServer = 0;
  var totalAfterDiscount = 0.0;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        // leading: Text(widget.title, style: const TextStyle(fontFamily: 'Cairo',fontSize: 18, color: Color(0xffffffff)), textDirection: TextDirection.rtl,),
        title: Text(widget.title, style: const TextStyle(fontFamily: 'Cairo',fontSize: 18, color: Color(0xffffffff)), textDirection: TextDirection.rtl,),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.fromLTRB(50.0,20.0,50.0,10.0),
              child:  Image.asset('assets/images/fatora/logo.png',width: 150, fit: BoxFit.contain,),
            ),


            Padding(
              padding: const EdgeInsets.fromLTRB(50.0,20.0,50.0,10.0),
              child: Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(child: Text(
                    'أدخل اسم المؤسسة',
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontFamily: 'Cairo',fontSize: 18, color: Color(0xff25626F)),
                  )),
                  SizedBox(
                    width: width*0.5,
                    child: TextFormField(
                      onChanged: (val) {
                        setState(() {
                          companyName = val;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(50.0,20.0,50.0,10.0),
              child: Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(child: Text(
                    'أدخل عدد برنامج الفاتورة الالكترونية',
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontFamily: 'Cairo',fontSize: 18, color: Color(0xff25626F)),
                  )),
                  SizedBox(
                    width: width*0.5,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      onChanged: (val) {
                        setState(() {
                          nProgFatora = int.tryParse(val)!;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.fromLTRB(50.0,20.0,50.0,10.0),
              child: Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(child: Text(
                    'أدخل عدد أجهزة نقاط البيع نظام التشغيل أندرويد',
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontFamily: 'Cairo',fontSize: 18, color: Color(0xff25626F)),
                  )),
                  SizedBox(
                    width: width*0.5,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      onChanged: (val) {
                        setState(() {
                          nBae = int.tryParse(val)!;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),



            Padding(
              padding: const EdgeInsets.fromLTRB(50.0,20.0,50.0,10.0),
              child: Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(child: Text(
                    'أدخل عدد أجهزة الكاشير نظام التشغيل ويندوز',
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontFamily: 'Cairo',fontSize: 18, color: Color(0xff25626F)),
                  )),
                  SizedBox(
                    width: width*0.5,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      onChanged: (val) {
                        setState(() {
                          nCashier = int.tryParse(val)!;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(50.0,20.0,50.0,10.0),
              child: Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(child: Text(
                    'حجز سيرفر لمدة عام (عدد)',
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontFamily: 'Cairo',fontSize: 18, color: Color(0xff25626F)),
                  )),
                  SizedBox(
                    width: width*0.5,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      onChanged: (val) {
                        setState(() {
                          nServer = int.tryParse(val)!;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(50.0,20.0,50.0,10.0),
              child: Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(child: Text(
                    'الإجمالي بعد الخصم',
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontFamily: 'Cairo',fontSize: 18, color: Color(0xff25626F)),
                  )),
                  SizedBox(
                    width: width*0.5,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      onChanged: (val) {
                        setState(() {
                          totalAfterDiscount = double.tryParse(val)!;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),





          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async{
          // await printPdfSmall(context,companyName);
          await Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => QuoteScreen(
                  companyName: companyName,
                  nProgFatora: nProgFatora,
                  nBae: nBae,
                  nCashier: nCashier,
                  nServer: nServer,
                  totalAfterDiscount: totalAfterDiscount,
                )),
          );
        },
        tooltip: 'تأكيد',
        child: const Icon(Icons.done_all),
      ),
    );
  }
}
