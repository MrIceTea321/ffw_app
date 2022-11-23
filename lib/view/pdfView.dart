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
      body: Center(
        child: pdfView(),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: const Icon(Icons.first_page_outlined),
            onPressed: () => pdfController.previousPage(
                duration: const Duration(milliseconds: 250),
                curve: Curves.easeIn),
          ),
          FloatingActionButton(
            child: const Icon(Icons.last_page_outlined),
            onPressed: () => pdfController.nextPage(
                duration: const Duration(milliseconds: 250),
                curve: Curves.easeIn),
          ),
        ],
      ),
    );
  }
}
