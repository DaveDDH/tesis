// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eventos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EventosRecord> _$eventosRecordSerializer =
    new _$EventosRecordSerializer();

class _$EventosRecordSerializer implements StructuredSerializer<EventosRecord> {
  @override
  final Iterable<Type> types = const [EventosRecord, _$EventosRecord];
  @override
  final String wireName = 'EventosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, EventosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nombre;
    if (value != null) {
      result
        ..add('Nombre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.descripcion;
    if (value != null) {
      result
        ..add('Descripcion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photo;
    if (value != null) {
      result
        ..add('Photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.repetitivo;
    if (value != null) {
      result
        ..add('Repetitivo')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.participantes;
    if (value != null) {
      result
        ..add('participantes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.lugar;
    if (value != null) {
      result
        ..add('Lugar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.administrador;
    if (value != null) {
      result
        ..add('administrador')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.participantesEmails;
    if (value != null) {
      result
        ..add('participantesEmails')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.fechaInicio;
    if (value != null) {
      result
        ..add('Fecha_Inicio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.horaInicio;
    if (value != null) {
      result
        ..add('Hora_Inicio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.horaFin;
    if (value != null) {
      result
        ..add('Hora_Fin')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.fechaFin;
    if (value != null) {
      result
        ..add('Fecha_Fin')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.cantidadDias;
    if (value != null) {
      result
        ..add('cantidadDias')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.activo;
    if (value != null) {
      result
        ..add('activo')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  EventosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EventosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Nombre':
          result.nombre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Descripcion':
          result.descripcion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Photo':
          result.photo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Repetitivo':
          result.repetitivo = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'participantes':
          result.participantes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'Lugar':
          result.lugar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'administrador':
          result.administrador = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'participantesEmails':
          result.participantesEmails.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'Fecha_Inicio':
          result.fechaInicio = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Hora_Inicio':
          result.horaInicio = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Hora_Fin':
          result.horaFin = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Fecha_Fin':
          result.fechaFin = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'cantidadDias':
          result.cantidadDias = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'activo':
          result.activo = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$EventosRecord extends EventosRecord {
  @override
  final String? nombre;
  @override
  final String? descripcion;
  @override
  final String? photo;
  @override
  final bool? repetitivo;
  @override
  final String? uid;
  @override
  final BuiltList<DocumentReference<Object?>>? participantes;
  @override
  final String? lugar;
  @override
  final DocumentReference<Object?>? administrador;
  @override
  final BuiltList<String>? participantesEmails;
  @override
  final DateTime? fechaInicio;
  @override
  final DateTime? horaInicio;
  @override
  final DateTime? horaFin;
  @override
  final DateTime? fechaFin;
  @override
  final int? cantidadDias;
  @override
  final bool? activo;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EventosRecord([void Function(EventosRecordBuilder)? updates]) =>
      (new EventosRecordBuilder()..update(updates))._build();

  _$EventosRecord._(
      {this.nombre,
      this.descripcion,
      this.photo,
      this.repetitivo,
      this.uid,
      this.participantes,
      this.lugar,
      this.administrador,
      this.participantesEmails,
      this.fechaInicio,
      this.horaInicio,
      this.horaFin,
      this.fechaFin,
      this.cantidadDias,
      this.activo,
      this.ffRef})
      : super._();

  @override
  EventosRecord rebuild(void Function(EventosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventosRecordBuilder toBuilder() => new EventosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventosRecord &&
        nombre == other.nombre &&
        descripcion == other.descripcion &&
        photo == other.photo &&
        repetitivo == other.repetitivo &&
        uid == other.uid &&
        participantes == other.participantes &&
        lugar == other.lugar &&
        administrador == other.administrador &&
        participantesEmails == other.participantesEmails &&
        fechaInicio == other.fechaInicio &&
        horaInicio == other.horaInicio &&
        horaFin == other.horaFin &&
        fechaFin == other.fechaFin &&
        cantidadDias == other.cantidadDias &&
        activo == other.activo &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    0,
                                                                    nombre
                                                                        .hashCode),
                                                                descripcion
                                                                    .hashCode),
                                                            photo.hashCode),
                                                        repetitivo.hashCode),
                                                    uid.hashCode),
                                                participantes.hashCode),
                                            lugar.hashCode),
                                        administrador.hashCode),
                                    participantesEmails.hashCode),
                                fechaInicio.hashCode),
                            horaInicio.hashCode),
                        horaFin.hashCode),
                    fechaFin.hashCode),
                cantidadDias.hashCode),
            activo.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EventosRecord')
          ..add('nombre', nombre)
          ..add('descripcion', descripcion)
          ..add('photo', photo)
          ..add('repetitivo', repetitivo)
          ..add('uid', uid)
          ..add('participantes', participantes)
          ..add('lugar', lugar)
          ..add('administrador', administrador)
          ..add('participantesEmails', participantesEmails)
          ..add('fechaInicio', fechaInicio)
          ..add('horaInicio', horaInicio)
          ..add('horaFin', horaFin)
          ..add('fechaFin', fechaFin)
          ..add('cantidadDias', cantidadDias)
          ..add('activo', activo)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EventosRecordBuilder
    implements Builder<EventosRecord, EventosRecordBuilder> {
  _$EventosRecord? _$v;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  String? _descripcion;
  String? get descripcion => _$this._descripcion;
  set descripcion(String? descripcion) => _$this._descripcion = descripcion;

  String? _photo;
  String? get photo => _$this._photo;
  set photo(String? photo) => _$this._photo = photo;

  bool? _repetitivo;
  bool? get repetitivo => _$this._repetitivo;
  set repetitivo(bool? repetitivo) => _$this._repetitivo = repetitivo;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  ListBuilder<DocumentReference<Object?>>? _participantes;
  ListBuilder<DocumentReference<Object?>> get participantes =>
      _$this._participantes ??= new ListBuilder<DocumentReference<Object?>>();
  set participantes(ListBuilder<DocumentReference<Object?>>? participantes) =>
      _$this._participantes = participantes;

  String? _lugar;
  String? get lugar => _$this._lugar;
  set lugar(String? lugar) => _$this._lugar = lugar;

  DocumentReference<Object?>? _administrador;
  DocumentReference<Object?>? get administrador => _$this._administrador;
  set administrador(DocumentReference<Object?>? administrador) =>
      _$this._administrador = administrador;

  ListBuilder<String>? _participantesEmails;
  ListBuilder<String> get participantesEmails =>
      _$this._participantesEmails ??= new ListBuilder<String>();
  set participantesEmails(ListBuilder<String>? participantesEmails) =>
      _$this._participantesEmails = participantesEmails;

  DateTime? _fechaInicio;
  DateTime? get fechaInicio => _$this._fechaInicio;
  set fechaInicio(DateTime? fechaInicio) => _$this._fechaInicio = fechaInicio;

  DateTime? _horaInicio;
  DateTime? get horaInicio => _$this._horaInicio;
  set horaInicio(DateTime? horaInicio) => _$this._horaInicio = horaInicio;

  DateTime? _horaFin;
  DateTime? get horaFin => _$this._horaFin;
  set horaFin(DateTime? horaFin) => _$this._horaFin = horaFin;

  DateTime? _fechaFin;
  DateTime? get fechaFin => _$this._fechaFin;
  set fechaFin(DateTime? fechaFin) => _$this._fechaFin = fechaFin;

  int? _cantidadDias;
  int? get cantidadDias => _$this._cantidadDias;
  set cantidadDias(int? cantidadDias) => _$this._cantidadDias = cantidadDias;

  bool? _activo;
  bool? get activo => _$this._activo;
  set activo(bool? activo) => _$this._activo = activo;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EventosRecordBuilder() {
    EventosRecord._initializeBuilder(this);
  }

  EventosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _descripcion = $v.descripcion;
      _photo = $v.photo;
      _repetitivo = $v.repetitivo;
      _uid = $v.uid;
      _participantes = $v.participantes?.toBuilder();
      _lugar = $v.lugar;
      _administrador = $v.administrador;
      _participantesEmails = $v.participantesEmails?.toBuilder();
      _fechaInicio = $v.fechaInicio;
      _horaInicio = $v.horaInicio;
      _horaFin = $v.horaFin;
      _fechaFin = $v.fechaFin;
      _cantidadDias = $v.cantidadDias;
      _activo = $v.activo;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EventosRecord;
  }

  @override
  void update(void Function(EventosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventosRecord build() => _build();

  _$EventosRecord _build() {
    _$EventosRecord _$result;
    try {
      _$result = _$v ??
          new _$EventosRecord._(
              nombre: nombre,
              descripcion: descripcion,
              photo: photo,
              repetitivo: repetitivo,
              uid: uid,
              participantes: _participantes?.build(),
              lugar: lugar,
              administrador: administrador,
              participantesEmails: _participantesEmails?.build(),
              fechaInicio: fechaInicio,
              horaInicio: horaInicio,
              horaFin: horaFin,
              fechaFin: fechaFin,
              cantidadDias: cantidadDias,
              activo: activo,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'participantes';
        _participantes?.build();

        _$failedField = 'participantesEmails';
        _participantesEmails?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EventosRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
