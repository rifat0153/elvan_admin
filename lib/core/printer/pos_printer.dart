import 'dart:typed_data';
import 'package:elvan_admin/core/printer/header_printer.dart';
import 'package:elvan_shared/dtos/cart/cart_item_dto.dart';
import 'package:elvan_shared/dtos/order/order_dto.dart';
import 'package:esc_pos_printer/esc_pos_printer.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image/image.dart';
import 'package:flutter/services.dart';
import 'package:flutter_esc_pos_utils/flutter_esc_pos_utils.dart';
import 'package:intl/intl.dart';
import 'package:printing/printing.dart';

final printerNotifierProvider = NotifierProvider<POSprinter, void>(
  POSprinter.new,
);

class POSprinter extends Notifier<void> {
  late CapabilityProfile profile;
  late Generator generator;
  List<int> bytes = [];

  final headderStyle = const PosStyles(
    align: PosAlign.center,
    height: PosTextSize.size2,
    width: PosTextSize.size2,
  );

  final bodyStyle = const PosStyles(align: PosAlign.center);

  final smallStyle = const PosStyles(bold: true, align: PosAlign.center);

  @override
  void build() {
    init();
  }

  init() async {
    profile = await CapabilityProfile.load();
    generator = Generator(PaperSize.mm80, profile);
  }

  print({required HeaderPrinter headerPrinter, required OrderDto order}) async {
    // Print image:
    final ByteData data = await rootBundle.load(headerPrinter.imageUrl!);
    final Uint8List imgBytes = data.buffer.asUint8List();
    // Uint8List imgBytes =
    //     (await NetworkAssetBundle(Uri.parse(headerPrinter.imageUrl!))
    //             .load(headerPrinter.imageUrl!))
    //         .buffer
    //         .asUint8List();
    final Image image = decodeImage(imgBytes)!;
    bytes += generator.image(image);
    // Print image using an alternative (obsolette) command
    // bytes += generator.imageRaster(image);

    // ***************** title
    bytes += generator.text("${headerPrinter.title}", styles: headderStyle,linesAfter: 1);
    // ***************** address
    bytes += generator.text("${headerPrinter.address}", styles: bodyStyle);
    // ***************** phone
    bytes += generator.text("${headerPrinter.phone}", styles: bodyStyle);

    // ***************** website
    bytes += generator.text("${headerPrinter.website}", styles: bodyStyle,linesAfter: 1);

    // ***************** border
    bytes += generator.hr();
    bytes += generator.hr();

    //**************** Table header */
    bytes += generator.row([
      PosColumn(
        text: 'Oty',
        width: 2,
        styles: const PosStyles(
          align: PosAlign.left,
        ),
      ),
      PosColumn(
        text: 'items',
        width: 6,
        styles: const PosStyles(align: PosAlign.left),
      ),
      PosColumn(
        text: 'price',
        width: 2,
        styles: const PosStyles(
          align: PosAlign.right,
        ),
      ),
      PosColumn(
        text: 'Total',
        width: 2,
        styles: const PosStyles(align: PosAlign.right),
      ),
    ]);
    //**************** Table content */
    for (CartItemDto item in order.items) {
      bytes += generator.row([
        PosColumn(
          text: '${item.quantity}',
          width: 2,
          styles: const PosStyles(
            align: PosAlign.left,
          ),
        ),
        PosColumn(
          text: item.foodItem.title,
          width: 6,
          styles: const PosStyles(align: PosAlign.left),
        ),
        PosColumn(
          text: "${item.foodItem.price}",
          width: 2,
          styles: const PosStyles(
            align: PosAlign.right,
          ),
        ),
        PosColumn(
          text: '${item.price}',
          width: 2,
          styles: const PosStyles(align: PosAlign.right),
        )
      ]);
    }

    //**************** broder */

    bytes += generator.text('');
    bytes += generator.text('');
    bytes += generator.hr();

    //**************** title */
    bytes += generator.row([
      PosColumn(
        text: 'Total',
        width: 8,
        styles: const PosStyles(
          align: PosAlign.right,
        ),
      ),
      PosColumn(
        text: '${order.total}',
        width: 4,
        styles: const PosStyles(align: PosAlign.right),
      ),
    ]);

    //**************** broder */

    bytes += generator.text('');
    bytes += generator.text('');
    bytes += generator.hr();
    bytes += generator.hr();

    //************* footer */

    final today = DateTime.now();
    String formattedDate = DateFormat('yyyy-MM-dd  kk:mm').format(today);
    bytes += generator.text('');
    bytes += generator.text('');
    bytes += generator.text('');
    bytes += generator.text('');
    bytes += generator.text('');
    bytes += generator.text('');
    bytes += generator.text("Thank You!", styles: smallStyle);
    bytes += generator.text('');
    bytes += generator.text("$formattedDate", styles: bodyStyle);

    //*******************barcode */
    bytes += generator.text('');
    bytes += generator.text('');
    bytes += generator.text('');

    // Print barcode
    final List<int> barData = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 4];
    bytes += generator.barcode(Barcode.upcA(barData));
    bytes += generator.feed(2);
    bytes += generator.cut();


  }
}
