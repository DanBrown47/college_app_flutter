import 'package:flutter/material.dart';
import 'package:tc_college_app/screens/home/library/docView.dart';
import 'package:tc_college_app/screens/shared/constants.dart';

class StudyMaterials extends StatefulWidget {
  const StudyMaterials({super.key});

  @override
  State<StudyMaterials> createState() => _StudyMaterialsState();
}

class _StudyMaterialsState extends State<StudyMaterials> {
  final List<PdfFile> pdfFiles = [
    PdfFile('file 1', 'assets/images/book.png', 'assets/documents/260KB.pdf'),
    PdfFile('file 2', 'assets/images/book.png',
        'assets/documents/DWSample1-PDF.pdf'),
    PdfFile('file 3', 'assets/images/book.png',
        'assets/documents/sample-pdf-file.pdf'),
  ];

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: themeColor,
        title: Text(
          'Study Materials',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(screenSize.width * 0.05),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0,
            childAspectRatio: 0.9,
          ),
          itemCount: pdfFiles.length,
          itemBuilder: (context, index) {
            return CustomDocTile(
                thumbnailPath: pdfFiles[index].thumbnailPath,
                title: pdfFiles[index].fileName,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DocumentViewer(
                              filePath: pdfFiles[index].filePath)));
                });
          },
        ),
      ),
    );
  }
}

class PdfFile {
  final String fileName;
  final String thumbnailPath;
  final String filePath;

  PdfFile(this.fileName, this.thumbnailPath, this.filePath);
}
