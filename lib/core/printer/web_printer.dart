import 'package:elvan_admin/core/printer/header_printer.dart';
import 'package:elvan_shared/dtos/order/order_dto.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

final webPrinterNotifierProvider = NotifierProvider<Webprinter, void>(
  Webprinter.new,
);

class Webprinter extends Notifier<void> {
  final PdfColor baseColor = PdfColors.black;
  final headlineStyle = pw.TextStyle(
    color: PdfColors.black,
    fontWeight: pw.FontWeight.bold,
    fontSize: 14,
  );
  final bodyStyle = const pw.TextStyle(
    color: PdfColors.black,
    fontSize: 10,
  );
  final bodyBoldStyle = pw.TextStyle(
      color: PdfColors.black, fontSize: 10, fontWeight: pw.FontWeight.bold);
  final smallStyle = const pw.TextStyle(
    color: PdfColors.black,
    fontSize: 8,
  );

  @override
  void build() {}

  printInvoice(
      {required HeaderPrinter headerPrinter, required OrderDto order}) async {
    final doc = pw.Document();
    var image = await imageFromAssetBundle(headerPrinter.imageUrl!);
    final today = DateTime.now();
    String formattedDate = DateFormat('yyyy-MM-dd  kk:mm').format(today);
    doc.addPage(pw.Page(
      pageFormat:  PdfPageFormat.roll80,
      // pageFormat: const PdfPageFormat(
      //   80 * PdfPageFormat.mm,
      //   170 * PdfPageFormat.mm,
      //   marginAll: 5 * PdfPageFormat.mm,
      // ),
      build: (context) {
        return _build(context, headerPrinter, image, order, formattedDate);
      },
    ));

    await Printing.layoutPdf(
        onLayout: (PdfPageFormat format) async => doc.save());
  }

  _build(pw.Context context, HeaderPrinter printer, var image, OrderDto order,
      String date) {
    return pw.Column(
      children: [
        pw.Row(
          crossAxisAlignment: pw.CrossAxisAlignment.center,
          children: [
            pw.Expanded(
              child: pw.Column(
                children: [
                  pw.Image(image, width: 80, height: 30),
                  pw.SizedBox(height: 10),
                  pw.Text("${printer.address}",
                      textAlign: pw.TextAlign.center, style: bodyStyle),
                  pw.Text("Tel: ${printer.phone}",
                      textAlign: pw.TextAlign.center, style: bodyStyle),
                  pw.Text("Web: ${printer.website}",
                      textAlign: pw.TextAlign.center, style: bodyStyle),
                  pw.SizedBox(height: 10),
                  pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.start,
                      children: [
                        pw.Text("#${order.id}",
                            textAlign: pw.TextAlign.center,
                            style: headlineStyle),
                      ]),
                  pw.SizedBox(height: 10),
                  pw.Container(
                    decoration: pw.BoxDecoration(
                      border: pw.Border(
                        bottom: pw.BorderSide(
                          color: baseColor,
                          width: .5,
                        ),
                      ),
                    ),
                  ),
                  _contentTable(context, order),
                  pw.Container(
                    decoration: pw.BoxDecoration(
                      border: pw.Border(
                        bottom: pw.BorderSide(
                          color: baseColor,
                          width: .5,
                        ),
                      ),
                    ),
                  ),
                  pw.SizedBox(height: 10),
                  pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.end,
                      children: [
                        pw.Text('Total: ${_formatCurrency(order.total)}',
                            textAlign: pw.TextAlign.center,
                            style: bodyBoldStyle),
                      ]),
                  pw.SizedBox(height: 30),
                  pw.Text('Thank You!',
                      textAlign: pw.TextAlign.center, style: bodyBoldStyle),
                  pw.Text("$date",
                      textAlign: pw.TextAlign.center, style: smallStyle),
                  pw.SizedBox(height: 30),
                  pw.BarcodeWidget(
                    barcode: pw.Barcode.code128(),
                    data: order.id,
                    width: 120,
                    height: 70,
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  pw.Widget _contentTable(pw.Context context, OrderDto order) {
    const tableHeaders = ['Items', 'Price', 'Qty', 'Total'];

    return pw.Table.fromTextArray(
        border: null,
        cellAlignment: pw.Alignment.centerLeft,
        headerDecoration: pw.BoxDecoration(
          border: pw.Border(
            bottom: pw.BorderSide(
              color: baseColor,
              width: .5,
            ),
          ),
        ),
        headerHeight: 25,
        cellHeight: 40,
        cellAlignments: {
          0: pw.Alignment.centerLeft,
          1: pw.Alignment.centerLeft,
          2: pw.Alignment.centerRight,
          3: pw.Alignment.centerRight,
        },
        headerStyle: pw.TextStyle(
          color: PdfColors.black,
          fontSize: 8,
          fontWeight: pw.FontWeight.bold,
        ),
        cellStyle: pw.TextStyle(
          color: baseColor,
          fontSize: 10,
        ),
        // rowDecoration: pw.BoxDecoration(
        //   border: pw.Border(
        //     bottom: pw.BorderSide(
        //       color: baseColor,
        //       width: .5,
        //     ),
        //   ),
        // ),
        headers: List<String>.generate(
          tableHeaders.length,
          (col) => tableHeaders[col],
        ),
        data: order.items
            .map(
              (e) => List<String>.generate(
                tableHeaders.length,
                (col) => Product(
                        productName: e.foodItem.title,
                        quantity: e.quantity,
                        price: e.foodItem.price,
                        total: e.price)
                    .getIndex(col),
              ),
            )
            .toList());
  }
}

String _formatDate(DateTime date) {
  final format = DateFormat.yMMMd('en_US');
  return format.format(date);
}

String _formatCurrency(double amount) {
  return '\$${amount.toStringAsFixed(2)}';
}

class Product {
  const Product(
      {required this.productName,
      required this.price,
      required this.quantity,
      required this.total});

  final String productName;
  final double price;
  final int quantity;
  final double total;

  String getIndex(int index) {
    switch (index) {
      case 0:
        return productName;
      case 1:
        return _formatCurrency(price);
      case 2:
        return quantity.toString();
      case 3:
        return _formatCurrency(total);
    }
    return '';
  }
}
