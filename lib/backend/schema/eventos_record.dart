import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'eventos_record.g.dart';

abstract class EventosRecord
    implements Built<EventosRecord, EventosRecordBuilder> {
  static Serializer<EventosRecord> get serializer => _$eventosRecordSerializer;

  @BuiltValueField(wireName: 'Nombre')
  String? get nombre;

  @BuiltValueField(wireName: 'Descripcion')
  String? get descripcion;

  @BuiltValueField(wireName: 'Photo')
  String? get photo;

  @BuiltValueField(wireName: 'Repetitivo')
  bool? get repetitivo;

  String? get uid;

  BuiltList<DocumentReference>? get participantes;

  @BuiltValueField(wireName: 'Lugar')
  String? get lugar;

  DocumentReference? get administrador;

  BuiltList<String>? get participantesEmails;

  @BuiltValueField(wireName: 'Fecha_Inicio')
  DateTime? get fechaInicio;

  @BuiltValueField(wireName: 'Hora_Inicio')
  DateTime? get horaInicio;

  @BuiltValueField(wireName: 'Hora_Fin')
  DateTime? get horaFin;

  @BuiltValueField(wireName: 'Fecha_Fin')
  DateTime? get fechaFin;

  int? get cantidadDias;

  bool? get activo;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EventosRecordBuilder builder) => builder
    ..nombre = ''
    ..descripcion = ''
    ..photo = ''
    ..repetitivo = false
    ..uid = ''
    ..participantes = ListBuilder()
    ..lugar = ''
    ..participantesEmails = ListBuilder()
    ..cantidadDias = 0
    ..activo = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Eventos');

  static Stream<EventosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EventosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EventosRecord._();
  factory EventosRecord([void Function(EventosRecordBuilder) updates]) =
      _$EventosRecord;

  static EventosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEventosRecordData({
  String? nombre,
  String? descripcion,
  String? photo,
  bool? repetitivo,
  String? uid,
  String? lugar,
  DocumentReference? administrador,
  DateTime? fechaInicio,
  DateTime? horaInicio,
  DateTime? horaFin,
  DateTime? fechaFin,
  int? cantidadDias,
  bool? activo,
}) {
  final firestoreData = serializers.toFirestore(
    EventosRecord.serializer,
    EventosRecord(
      (e) => e
        ..nombre = nombre
        ..descripcion = descripcion
        ..photo = photo
        ..repetitivo = repetitivo
        ..uid = uid
        ..participantes = null
        ..lugar = lugar
        ..administrador = administrador
        ..participantesEmails = null
        ..fechaInicio = fechaInicio
        ..horaInicio = horaInicio
        ..horaFin = horaFin
        ..fechaFin = fechaFin
        ..cantidadDias = cantidadDias
        ..activo = activo,
    ),
  );

  return firestoreData;
}
