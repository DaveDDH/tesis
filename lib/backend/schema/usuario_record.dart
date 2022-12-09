import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'usuario_record.g.dart';

abstract class UsuarioRecord
    implements Built<UsuarioRecord, UsuarioRecordBuilder> {
  static Serializer<UsuarioRecord> get serializer => _$usuarioRecordSerializer;

  @BuiltValueField(wireName: 'Nombre')
  String? get nombre;

  @BuiltValueField(wireName: 'Usuario')
  String? get usuario;

  @BuiltValueField(wireName: 'Rol')
  String? get rol;

  @BuiltValueField(wireName: 'Contrasena')
  String? get contrasena;

  String? get email;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'Anonimato')
  bool? get anonimato;

  LatLng? get ubicacion;

  BuiltList<DocumentReference>? get eventos;

  BuiltList<DocumentReference>? get comunidades;

  BuiltList<String>? get eventosNombre;

  BuiltList<String>? get comunidadesNombre;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsuarioRecordBuilder builder) => builder
    ..nombre = ''
    ..usuario = ''
    ..rol = ''
    ..contrasena = ''
    ..email = ''
    ..phoneNumber = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..anonimato = false
    ..eventos = ListBuilder()
    ..comunidades = ListBuilder()
    ..eventosNombre = ListBuilder()
    ..comunidadesNombre = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Usuario');

  static Stream<UsuarioRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsuarioRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsuarioRecord._();
  factory UsuarioRecord([void Function(UsuarioRecordBuilder) updates]) =
      _$UsuarioRecord;

  static UsuarioRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsuarioRecordData({
  String? nombre,
  String? usuario,
  String? rol,
  String? contrasena,
  String? email,
  DateTime? createdTime,
  String? phoneNumber,
  String? displayName,
  String? photoUrl,
  String? uid,
  bool? anonimato,
  LatLng? ubicacion,
}) {
  final firestoreData = serializers.toFirestore(
    UsuarioRecord.serializer,
    UsuarioRecord(
      (u) => u
        ..nombre = nombre
        ..usuario = usuario
        ..rol = rol
        ..contrasena = contrasena
        ..email = email
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..anonimato = anonimato
        ..ubicacion = ubicacion
        ..eventos = null
        ..comunidades = null
        ..eventosNombre = null
        ..comunidadesNombre = null,
    ),
  );

  return firestoreData;
}
