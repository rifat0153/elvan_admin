// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'header_printer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HeaderPrinter {
  String? get title => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HeaderPrinterCopyWith<HeaderPrinter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeaderPrinterCopyWith<$Res> {
  factory $HeaderPrinterCopyWith(HeaderPrinter value, $Res Function(HeaderPrinter) then) = _$HeaderPrinterCopyWithImpl<$Res, HeaderPrinter>;
  @useResult
  $Res call({String? title, String? address, String? imageUrl, String? phone, String? website});
}

/// @nodoc
class _$HeaderPrinterCopyWithImpl<$Res, $Val extends HeaderPrinter> implements $HeaderPrinterCopyWith<$Res> {
  _$HeaderPrinterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? address = freezed,
    Object? imageUrl = freezed,
    Object? phone = freezed,
    Object? website = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HeaderPrinterCopyWith<$Res> implements $HeaderPrinterCopyWith<$Res> {
  factory _$$_HeaderPrinterCopyWith(_$_HeaderPrinter value, $Res Function(_$_HeaderPrinter) then) = __$$_HeaderPrinterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? address, String? imageUrl, String? phone, String? website});
}

/// @nodoc
class __$$_HeaderPrinterCopyWithImpl<$Res> extends _$HeaderPrinterCopyWithImpl<$Res, _$_HeaderPrinter> implements _$$_HeaderPrinterCopyWith<$Res> {
  __$$_HeaderPrinterCopyWithImpl(_$_HeaderPrinter _value, $Res Function(_$_HeaderPrinter) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? address = freezed,
    Object? imageUrl = freezed,
    Object? phone = freezed,
    Object? website = freezed,
  }) {
    return _then(_$_HeaderPrinter(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_HeaderPrinter implements _HeaderPrinter {
  const _$_HeaderPrinter({this.title, this.address, this.imageUrl, this.phone, this.website});

  @override
  final String? title;
  @override
  final String? address;
  @override
  final String? imageUrl;
  @override
  final String? phone;
  @override
  final String? website;

  @override
  String toString() {
    return 'HeaderPrinter(title: $title, address: $address, imageUrl: $imageUrl, phone: $phone, website: $website)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HeaderPrinter &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.website, website) || other.website == website));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, address, imageUrl, phone, website);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HeaderPrinterCopyWith<_$_HeaderPrinter> get copyWith => __$$_HeaderPrinterCopyWithImpl<_$_HeaderPrinter>(this, _$identity);
}

abstract class _HeaderPrinter implements HeaderPrinter {
  const factory _HeaderPrinter({final String? title, final String? address, final String? imageUrl, final String? phone, final String? website}) = _$_HeaderPrinter;

  @override
  String? get title;
  @override
  String? get address;
  @override
  String? get imageUrl;
  @override
  String? get phone;
  @override
  String? get website;
  @override
  @JsonKey(ignore: true)
  _$$_HeaderPrinterCopyWith<_$_HeaderPrinter> get copyWith => throw _privateConstructorUsedError;
}
