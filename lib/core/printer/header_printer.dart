import 'package:freezed_annotation/freezed_annotation.dart';

part 'header_printer.freezed.dart';

@freezed
class HeaderPrinter with _$HeaderPrinter {
  const factory HeaderPrinter({String? title, String? address, String? imageUrl, String? phone, String? website}) = _HeaderPrinter;
}
