import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'orders_record.g.dart';

abstract class OrdersRecord
    implements Built<OrdersRecord, OrdersRecordBuilder> {
  static Serializer<OrdersRecord> get serializer => _$ordersRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'created_at')
  DateTime get createdAt;

  @nullable
  @BuiltValueField(wireName: 'order_no')
  String get orderNo;

  @nullable
  @BuiltValueField(wireName: 'pet_category')
  String get petCategory;

  @nullable
  String get name;

  @nullable
  String get service;

  @nullable
  int get quantity;

  @nullable
  double get amount;

  @nullable
  @BuiltValueField(wireName: 'scheduled_at')
  DateTime get scheduledAt;

  @nullable
  @BuiltValueField(wireName: 'customer_address')
  String get customerAddress;

  @nullable
  String get status;

  @nullable
  @BuiltValueField(wireName: 'customer_latlng')
  LatLng get customerLatlng;

  @nullable
  @BuiltValueField(wireName: 'customer_name')
  String get customerName;

  @nullable
  @BuiltValueField(wireName: 'payment_status')
  String get paymentStatus;

  @nullable
  @BuiltValueField(wireName: 'preffered_time')
  String get prefferedTime;

  @nullable
  double get discount;

  @nullable
  String get notes;

  @nullable
  @BuiltValueField(wireName: 'start_time')
  String get startTime;

  @nullable
  @BuiltValueField(wireName: 'end_time')
  String get endTime;

  @nullable
  @BuiltValueField(wireName: 'ranger_name')
  String get rangerName;

  @nullable
  @BuiltValueField(wireName: 'ranger_phone')
  String get rangerPhone;

  @nullable
  @BuiltValueField(wireName: 'ranger_profile_picture')
  String get rangerProfilePicture;

  @nullable
  @BuiltValueField(wireName: 'confirmed_at')
  DateTime get confirmedAt;

  @nullable
  @BuiltValueField(wireName: 'customer_phone')
  String get customerPhone;

  @nullable
  @BuiltValueField(wireName: 'ontheway_at')
  DateTime get onthewayAt;

  @nullable
  @BuiltValueField(wireName: 'working_at')
  DateTime get workingAt;

  @nullable
  @BuiltValueField(wireName: 'finish_at')
  DateTime get finishAt;

  @nullable
  @BuiltValueField(wireName: 'paid_at')
  DateTime get paidAt;

  @nullable
  @BuiltValueField(wireName: 'payment_method')
  String get paymentMethod;

  @nullable
  @BuiltValueField(wireName: 'cancelled_at')
  DateTime get cancelledAt;

  @nullable
  int get rate;

  @nullable
  String get comment;

  @nullable
  @BuiltValueField(wireName: 'ranger_uid')
  DocumentReference get rangerUid;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(OrdersRecordBuilder builder) => builder
    ..orderNo = ''
    ..petCategory = ''
    ..name = ''
    ..service = ''
    ..quantity = 0
    ..amount = 0.0
    ..customerAddress = ''
    ..status = ''
    ..customerName = ''
    ..paymentStatus = ''
    ..prefferedTime = ''
    ..discount = 0.0
    ..notes = ''
    ..startTime = ''
    ..endTime = ''
    ..rangerName = ''
    ..rangerPhone = ''
    ..rangerProfilePicture = ''
    ..customerPhone = ''
    ..paymentMethod = ''
    ..rate = 0
    ..comment = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  OrdersRecord._();
  factory OrdersRecord([void Function(OrdersRecordBuilder) updates]) =
      _$OrdersRecord;

  static OrdersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createOrdersRecordData({
  DateTime createdAt,
  String orderNo,
  String petCategory,
  String name,
  String service,
  int quantity,
  double amount,
  DateTime scheduledAt,
  String customerAddress,
  String status,
  LatLng customerLatlng,
  String customerName,
  String paymentStatus,
  String prefferedTime,
  double discount,
  String notes,
  String startTime,
  String endTime,
  String rangerName,
  String rangerPhone,
  String rangerProfilePicture,
  DateTime confirmedAt,
  String customerPhone,
  DateTime onthewayAt,
  DateTime workingAt,
  DateTime finishAt,
  DateTime paidAt,
  String paymentMethod,
  DateTime cancelledAt,
  int rate,
  String comment,
  DocumentReference rangerUid,
}) =>
    serializers.toFirestore(
        OrdersRecord.serializer,
        OrdersRecord((o) => o
          ..createdAt = createdAt
          ..orderNo = orderNo
          ..petCategory = petCategory
          ..name = name
          ..service = service
          ..quantity = quantity
          ..amount = amount
          ..scheduledAt = scheduledAt
          ..customerAddress = customerAddress
          ..status = status
          ..customerLatlng = customerLatlng
          ..customerName = customerName
          ..paymentStatus = paymentStatus
          ..prefferedTime = prefferedTime
          ..discount = discount
          ..notes = notes
          ..startTime = startTime
          ..endTime = endTime
          ..rangerName = rangerName
          ..rangerPhone = rangerPhone
          ..rangerProfilePicture = rangerProfilePicture
          ..confirmedAt = confirmedAt
          ..customerPhone = customerPhone
          ..onthewayAt = onthewayAt
          ..workingAt = workingAt
          ..finishAt = finishAt
          ..paidAt = paidAt
          ..paymentMethod = paymentMethod
          ..cancelledAt = cancelledAt
          ..rate = rate
          ..comment = comment
          ..rangerUid = rangerUid));
