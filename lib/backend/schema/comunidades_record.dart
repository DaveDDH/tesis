import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'comunidades_record.g.dart';

abstract class ComunidadesRecord
    implements Built<ComunidadesRecord, ComunidadesRecordBuilder> {
  static Serializer<ComunidadesRecord> get serializer =>
      _$comunidadesRecordSerializer;

  @BuiltValueField(wireName: 'Nombre')
  String? get nombre;

  @BuiltValueField(wireName: 'Descripcion')
  String? get descripcion;

  @BuiltValueField(wireName: 'Photo')
  String? get photo;

  DocumentReference? get administrador;

  BuiltList<DocumentReference>? get participantes;

  BuiltList<String>? get participantesEmails;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ComunidadesRecordBuilder builder) => builder
    ..nombre = ''
    ..descripcion = ''
    ..photo = ''
    ..participantes = ListBuilder()
    ..participantesEmails = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Comunidades');

  static Stream<ComunidadesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ComunidadesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ComunidadesRecord._();
  factory ComunidadesRecord([void Function(ComunidadesRecordBuilder) updates]) =
      _$ComunidadesRecord;

  static ComunidadesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createComunidadesRecordData({
  String? nombre,
  String? descripcion,
  String? photo,
  DocumentReference? administrador,
}) {
  final firestoreData = serializers.toFirestore(
    ComunidadesRecord.serializer,
    ComunidadesRecord(
      (c) => c
        ..nombre = nombre
        ..descripcion = descripcion
        ..photo = photo
        ..administrador = administrador
        ..participantes = null
        ..participantesEmails = null,
    ),
  );

  return firestoreData;
}
