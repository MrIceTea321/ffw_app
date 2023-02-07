import 'package:ffw_app/constants/colors.dart';
import 'package:pdfx/pdfx.dart';
import 'package:flutter/material.dart';

class PdfLabPage extends StatefulWidget {
  const PdfLabPage({
    Key? key,
  }) : super(key: key);

  @override
  State<PdfLabPage> createState() => _PdfLabPageState();
}

class _PdfLabPageState extends State<PdfLabPage> {
  late PdfController pdfController;

  @override
  void initState() {
    pdfController =
        PdfController(document: PdfDocument.openAsset('pdf/mtaGesamt.pdf'));

    super.initState();
  }

  @override
  void dispose() {
    pdfController.dispose();
    super.dispose();
  }

  Widget pdfView() => PdfView(
        controller: pdfController,
        renderer: (PdfPage page) => page.render(
          width: page.width,
          height: page.height,
          format: PdfPageImageFormat.jpeg,
          backgroundColor: '#1f1f1f',
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: SizedBox(
          height: 50,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                iconSize: 40.0,
                padding: const EdgeInsets.only(left: 28.0),
                icon: const Icon(
                  Icons.arrow_back_outlined,
                  color: darkBlue,
                ),
                onPressed: () {
                  pdfController.previousPage(
                      duration: const Duration(milliseconds: 250),
                      curve: Curves.easeIn);
                },
              ),
              IconButton(
                iconSize: 40.0,
                padding: const EdgeInsets.only(right: 28.0),
                icon: const Icon(
                  Icons.arrow_forward_outlined,
                  color: darkBlue,
                ),
                onPressed: () {
                  pdfController.nextPage(
                      duration: const Duration(milliseconds: 250),
                      curve: Curves.easeIn);
                },
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: pdfView(),
      ),
    );
  }
}
