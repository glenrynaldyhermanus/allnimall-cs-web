// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rangers_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RangersRecord> _$rangersRecordSerializer =
    new _$RangersRecordSerializer();

class _$RangersRecordSerializer implements StructuredSerializer<RangersRecord> {
  @override
  final Iterable<Type> types = const [RangersRecord, _$RangersRecord];
  @override
  final String wireName = 'RangersRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, RangersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.rate;
    if (value != null) {
      result
        ..add('rate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  RangersRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RangersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'rate':
          result.rate = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$RangersRecord extends RangersRecord {
  @override
  final DocumentReference<Object> uid;
  @override
  final double rate;
  @override
  final DocumentReference<Object> reference;

  factory _$RangersRecord([void Function(RangersRecordBuilder) updates]) =>
      (new RangersRecordBuilder()..update(updates)).build();

  _$RangersRecord._({this.uid, this.rate, this.reference}) : super._();

  @override
  RangersRecord rebuild(void Function(RangersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RangersRecordBuilder toBuilder() => new RangersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RangersRecord &&
        uid == other.uid &&
        rate == other.rate &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, uid.hashCode), rate.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RangersRecord')
          ..add('uid', uid)
          ..add('rate', rate)
          ..add('reference', reference))
        .toString();
  }
}

class RangersRecordBuilder
    implements Builder<RangersRecord, RangersRecordBuilder> {
  _$RangersRecord _$v;

  DocumentReference<Object> _uid;
  DocumentReference<Object> get uid => _$this._uid;
  set uid(DocumentReference<Object> uid) => _$this._uid = uid;

  double _rate;
  double get rate => _$this._rate;
  set rate(double rate) => _$this._rate = rate;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  RangersRecordBuilder() {
    RangersRecord._initializeBuilder(this);
  }

  RangersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _rate = $v.rate;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RangersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RangersRecord;
  }

  @override
  void update(void Function(RangersRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RangersRecord build() {
    final _$result = _$v ??
        new _$RangersRecord._(uid: uid, rate: rate, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
