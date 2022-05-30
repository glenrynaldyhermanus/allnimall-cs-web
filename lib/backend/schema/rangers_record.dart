import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'rangers_record.g.dart';

abstract class RangersRecord
    implements Built<RangersRecord, RangersRecordBuilder> {
  static Serializer<RangersRecord> get serializer => _$rangersRecordSerializer;

  @nullable
  DocumentReference get uid;

  @nullable
  double get rate;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(RangersRecordBuilder builder) =>
      builder..rate = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rangers');

  static Stream<RangersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<RangersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  RangersRecord._();
  factory RangersRecord([void Function(RangersRecordBuilder) updates]) =
      _$RangersRecord;

  static RangersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createRangersRecordData({
  DocumentReference uid,
  double rate,
}) =>
    serializers.toFirestore(
        RangersRecord.serializer,
        RangersRecord((r) => r
          ..uid = uid
          ..rate = rate));
