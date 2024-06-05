import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MedicineRecord extends FirestoreRecord {
  MedicineRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "totalCount" field.
  int? _totalCount;
  int get totalCount => _totalCount ?? 0;
  bool hasTotalCount() => _totalCount != null;

  // "startdate" field.
  DateTime? _startdate;
  DateTime? get startdate => _startdate;
  bool hasStartdate() => _startdate != null;

  // "endDate" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  bool hasEndDate() => _endDate != null;

  // "med_name" field.
  String? _medName;
  String get medName => _medName ?? '';
  bool hasMedName() => _medName != null;

  // "frequency" field.
  String? _frequency;
  String get frequency => _frequency ?? '';
  bool hasFrequency() => _frequency != null;

  // "breakfastTime" field.
  String? _breakfastTime;
  String get breakfastTime => _breakfastTime ?? '';
  bool hasBreakfastTime() => _breakfastTime != null;

  // "lunchTime" field.
  String? _lunchTime;
  String get lunchTime => _lunchTime ?? '';
  bool hasLunchTime() => _lunchTime != null;

  // "dinnerTime" field.
  String? _dinnerTime;
  String get dinnerTime => _dinnerTime ?? '';
  bool hasDinnerTime() => _dinnerTime != null;

  void _initializeFields() {
    _quantity = castToType<int>(snapshotData['quantity']);
    _totalCount = castToType<int>(snapshotData['totalCount']);
    _startdate = snapshotData['startdate'] as DateTime?;
    _endDate = snapshotData['endDate'] as DateTime?;
    _medName = snapshotData['med_name'] as String?;
    _frequency = snapshotData['frequency'] as String?;
    _breakfastTime = snapshotData['breakfastTime'] as String?;
    _lunchTime = snapshotData['lunchTime'] as String?;
    _dinnerTime = snapshotData['dinnerTime'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('medicine');

  static Stream<MedicineRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MedicineRecord.fromSnapshot(s));

  static Future<MedicineRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MedicineRecord.fromSnapshot(s));

  static MedicineRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MedicineRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MedicineRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MedicineRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MedicineRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MedicineRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMedicineRecordData({
  int? quantity,
  int? totalCount,
  DateTime? startdate,
  DateTime? endDate,
  String? medName,
  String? frequency,
  String? breakfastTime,
  String? lunchTime,
  String? dinnerTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'quantity': quantity,
      'totalCount': totalCount,
      'startdate': startdate,
      'endDate': endDate,
      'med_name': medName,
      'frequency': frequency,
      'breakfastTime': breakfastTime,
      'lunchTime': lunchTime,
      'dinnerTime': dinnerTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class MedicineRecordDocumentEquality implements Equality<MedicineRecord> {
  const MedicineRecordDocumentEquality();

  @override
  bool equals(MedicineRecord? e1, MedicineRecord? e2) {
    return e1?.quantity == e2?.quantity &&
        e1?.totalCount == e2?.totalCount &&
        e1?.startdate == e2?.startdate &&
        e1?.endDate == e2?.endDate &&
        e1?.medName == e2?.medName &&
        e1?.frequency == e2?.frequency &&
        e1?.breakfastTime == e2?.breakfastTime &&
        e1?.lunchTime == e2?.lunchTime &&
        e1?.dinnerTime == e2?.dinnerTime;
  }

  @override
  int hash(MedicineRecord? e) => const ListEquality().hash([
        e?.quantity,
        e?.totalCount,
        e?.startdate,
        e?.endDate,
        e?.medName,
        e?.frequency,
        e?.breakfastTime,
        e?.lunchTime,
        e?.dinnerTime
      ]);

  @override
  bool isValidKey(Object? o) => o is MedicineRecord;
}
