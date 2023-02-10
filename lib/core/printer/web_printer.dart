import 'package:elvan_admin/core/printer/header_printer.dart';
import 'package:elvan_admin/shared/constants/app_colors.dart';
import 'package:elvan_shared/domain_models/cart/cart_item.dart';
import 'package:elvan_shared/domain_models/order/order.dart';
import 'package:elvan_shared/dtos/category/build_step/build_step.dart';
import 'package:flutter/material.dart';
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
      {required HeaderPrinter headerPrinter, required Order order}) async {
    final doc = pw.Document();
    var image = await imageFromAssetBundle(headerPrinter.imageUrl!);
    final today = DateTime.now();
    String formattedDate = DateFormat('yyyy-MM-dd  kk:mm').format(today);
    doc.addPage(pw.Page(
      pageFormat: PdfPageFormat.roll80,
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

  _build(pw.Context context, HeaderPrinter printer, var image, Order order,
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
                  //  _contentTable(context, order),
                  _itemList(context, order),
                  // pw.Container(
                  //   decoration: pw.BoxDecoration(
                  //     border: pw.Border(
                  //       bottom: pw.BorderSide(
                  //         color: baseColor,
                  //         width: .5,
                  //       ),
                  //     ),
                  //   ),
                  // ),
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

  pw.Widget _itemList(pw.Context context, Order order) {
    return pw.Column(children: [
      pw.Row(mainAxisAlignment: pw.MainAxisAlignment.spaceBetween, children: [
        pw.SizedBox(
          width: 100,
          child: pw.Text(
            "Items",
            style: pw.TextStyle(
                fontSize: 14,
                fontWeight: pw.FontWeight.bold,
                color: PdfColors.black),
          ),
        ),
        pw.Text(
          "Price",
          style: pw.TextStyle(
              fontSize: 14,
              fontWeight: pw.FontWeight.bold,
              color: PdfColors.black),
        ),
        pw.Text(
          "Qty",
          style: pw.TextStyle(
              fontSize: 14,
              fontWeight: pw.FontWeight.bold,
              color: PdfColors.black),
        ),
        pw.Text(
          "Total",
          style: pw.TextStyle(
              fontSize: 14,
              fontWeight: pw.FontWeight.bold,
              color: PdfColors.black),
        ),
      ]),
      pw.Divider(height: 2, color: PdfColors.black),
      pw.SizedBox(height: 10),
      pw.Column(
          children: order.items.map((e) {
        return _foodItem(item: e);
      }).toList())
    ]);
  }

  pw.Widget _foodItem({required CartItem item}) {
    return pw.Column(children: [
      pw.Row(
        
        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.SizedBox(
            width: 100,
            child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Text(
                    item.foodItem.title,
                    style: const pw.TextStyle(
                      fontSize: 12,
                      color: PdfColors.black,
                    ),
                  ),
               pw.Padding(
                padding: const pw.EdgeInsets.only(top: 10,bottom: 10),
                child:    pw.Text(
                    "# Build Step:",
                    style: const pw.TextStyle(
                      fontSize: 11,
                      color: PdfColors.black,
                    ),
                  ),),
                  item.buildSteps.isNotEmpty
                      ? pw.Column(
                          children: item.buildSteps
                              .map((e) => _buildSteps(buildStep: e))
                              .toList(),
                        )
                      : pw.Container()
                ]),
          ),
          pw.Text(
            "${item.foodItem.price}",
            style: pw.TextStyle(
              fontSize: 12,
              fontWeight: pw.FontWeight.bold,
              color: PdfColors.black,
            ),
          ),
          pw.Text(
            "${item.quantity}",
            style: const pw.TextStyle(
              fontSize: 11,
              color: PdfColors.black,
            ),
          ),
          pw.Text(
            "${item.price}",
            style: const pw.TextStyle(
              fontSize: 11,
              color: PdfColors.black,
            ),
          )
        ]),
        pw.Divider()
    ],);
  }

  pw.Widget _buildSteps({required BuildStep buildStep}) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text(
          buildStep.title,
          style: const pw.TextStyle(
            fontSize: 11,
            color: PdfColors.black,
          ),
        ),
        pw.Padding(
          padding: const pw.EdgeInsets.only(top: 10, bottom: 10),
          child: pw.Text(
            "# Add Ons:",
            style: const pw.TextStyle(
              fontSize: 11,
              color: PdfColors.black,
            ),
          ),
        ),
        buildStep.addOns.isNotEmpty
            ? pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: buildStep.addOns
                    .map(
                      (e) => pw.Text(
                        "* ${e.title}",
                        style: const pw.TextStyle(
                          fontSize: 10,
                          color: PdfColors.black,
                        ),
                      ),
                    )
                    .toList(),
              )
            : pw.Container(),
      ],
    );
  }

  pw.Widget _contentTable(pw.Context context, Order order) {
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
