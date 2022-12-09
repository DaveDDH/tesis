// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comunidades_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ComunidadesRecord> _$comunidadesRecordSerializer =
    new _$ComunidadesRecordSerializer();

class _$ComunidadesRecordSerializer
    implements StructuredSerializer<ComunidadesRecord> {
  @override
  final Iterable<Type> types = const [ComunidadesRecord, _$ComunidadesRecord];
  @override
  final String wireName = 'ComunidadesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ComunidadesRecord object,
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
    value = object.administrador;
    if (value != null) {
      result
        ..add('administrador')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
    value = object.participantesEmails;
    if (value != null) {
      result
        ..add('participantesEmails')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
  ComunidadesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ComunidadesRecordBuilder();

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
        case 'administrador':
          result.administrador = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'participantes':
          result.participantes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'participantesEmails':
          result.participantesEmails.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
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

class _$ComunidadesRecord extends ComunidadesRecord {
  @override
  final String? nombre;
  @override
  final String? descripcion;
  @override
  final String? photo;
  @override
  final DocumentReference<Object?>? administrador;
  @override
  final BuiltList<DocumentReference<Object?>>? participantes;
  @override
  final BuiltList<String>? participantesEmails;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ComunidadesRecord(
          [void Function(ComunidadesRecordBuilder)? updates]) =>
      (new ComunidadesRecordBuilder()..update(updates))._build();

  _$ComunidadesRecord._(
      {this.nombre,
      this.descripcion,
      this.photo,
      this.administrador,
      this.participantes,
      this.participantesEmails,
      this.ffRef})
      : super._();

  @override
  ComunidadesRecord rebuild(void Function(ComunidadesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ComunidadesRecordBuilder toBuilder() =>
      new ComunidadesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComunidadesRecord &&
        nombre == other.nombre &&
        descripcion == other.descripcion &&
        photo == other.photo &&
        administrador == other.administrador &&
        participantes == other.participantes &&
        participantesEmails == other.participantesEmails &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, nombre.hashCode), descripcion.hashCode),
                        photo.hashCode),
                    administrador.hashCode),
                participantes.hashCode),
            participantesEmails.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ComunidadesRecord')
          ..add('nombre', nombre)
          ..add('descripcion', descripcion)
          ..add('photo', photo)
          ..add('administrador', administrador)
          ..add('participantes', participantes)
          ..add('participantesEmails', participantesEmails)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ComunidadesRecordBuilder
    implements Builder<ComunidadesRecord, ComunidadesRecordBuilder> {
  _$ComunidadesRecord? _$v;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  String? _descripcion;
  String? get descripcion => _$this._descripcion;
  set descripcion(String? descripcion) => _$this._descripcion = descripcion;

  String? _photo;
  String? get photo => _$this._photo;
  set photo(String? photo) => _$this._photo = photo;

  DocumentReference<Object?>? _administrador;
  DocumentReference<Object?>? get administrador => _$this._administrador;
  set administrador(DocumentReference<Object?>? administrador) =>
      _$this._administrador = administrador;

  ListBuilder<DocumentReference<Object?>>? _participantes;
  ListBuilder<DocumentReference<Object?>> get participantes =>
      _$this._participantes ??= new ListBuilder<DocumentReference<Object?>>();
  set participantes(ListBuilder<DocumentReference<Object?>>? participantes) =>
      _$this._participantes = participantes;

  ListBuilder<String>? _participantesEmails;
  ListBuilder<String> get participantesEmails =>
      _$this._participantesEmails ??= new ListBuilder<String>();
  set participantesEmails(ListBuilder<String>? participantesEmails) =>
      _$this._participantesEmails = participantesEmails;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ComunidadesRecordBuilder() {
    ComunidadesRecord._initializeBuilder(this);
  }

  ComunidadesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _descripcion = $v.descripcion;
      _photo = $v.photo;
      _administrador = $v.administrador;
      _participantes = $v.participantes?.toBuilder();
      _participantesEmails = $v.participantesEmails?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ComunidadesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ComunidadesRecord;
  }

  @override
  void update(void Function(ComunidadesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ComunidadesRecord build() => _build();

  _$ComunidadesRecord _build() {
    _$ComunidadesRecord _$result;
    try {
      _$result = _$v ??
          new _$ComunidadesRecord._(
              nombre: nombre,
              descripcion: descripcion,
              photo: photo,
              administrador: administrador,
              participantes: _participantes?.build(),
              participantesEmails: _participantesEmails?.build(),
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
            r'ComunidadesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
