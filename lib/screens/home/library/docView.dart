import 'package:flutter/material.dart';
// import 'package:flutter_windowmanager/flutter_windowmanager.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class DocumentViewer extends StatefulWidget {
  const DocumentViewer({Key? key, required this.filePath}) : super(key: key);
  final String filePath ;

  @override
  State<DocumentViewer> createState() => _DocumentViewerState();
}

class _DocumentViewerState extends State<DocumentViewer> {

  // @override
  // void initState() {
  //   super.initState();
  //   _blockScreenRecord();
  // }

  // Future<void> _blockScreenRecord() async{
  //   await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);
  // }

  @override
  Widget build(BuildContext context) {
    print(widget.filePath);
    return SfPdfViewer.asset(
      widget.filePath, 
      enableTextSelection: false,
      enableDoubleTapZooming: true,
      
    );
  }
}