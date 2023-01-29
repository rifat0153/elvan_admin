import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:moment_dart/moment_dart.dart';

class TimestampConverter {
  static Timestamp? timestampFromJson(Timestamp? timestamp) => timestamp;
  static Timestamp? timestampToJson(Timestamp? json) => json;

  static String? moment(Timestamp? data) {
    Moment? recent = data?.toDate().toMoment();
    return recent.toString();
  }
}
