// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsuarioRecord> _$usuarioRecordSerializer =
    new _$UsuarioRecordSerializer();

class _$UsuarioRecordSerializer implements StructuredSerializer<UsuarioRecord> {
  @override
  final Iterable<Type> types = const [UsuarioRecord, _$UsuarioRecord];
  @override
  final String wireName = 'UsuarioRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsuarioRecord object,
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
    value = object.usuario;
    if (value != null) {
      result
        ..add('Usuario')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rol;
    if (value != null) {
      result
        ..add('Rol')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.contrasena;
    if (value != null) {
      result
        ..add('Contrasena')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.anonimato;
    if (value != null) {
      result
        ..add('Anonimato')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.ubicacion;
    if (value != null) {
      result
        ..add('ubicacion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.eventos;
    if (value != null) {
      result
        ..add('eventos')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.comunidades;
    if (value != null) {
      result
        ..add('comunidades')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.eventosNombre;
    if (value != null) {
      result
        ..add('eventosNombre')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.comunidadesNombre;
    if (value != null) {
      result
        ..add('comunidadesNombre')
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
  UsuarioRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsuarioRecordBuilder();

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
        case 'Usuario':
          result.usuario = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Rol':
          result.rol = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Contrasena':
          result.contrasena = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Anonimato':
          result.anonimato = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'ubicacion':
          result.ubicacion = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'eventos':
          result.eventos.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'comunidades':
          result.comunidades.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'eventosNombre':
          result.eventosNombre.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'comunidadesNombre':
          result.comunidadesNombre.replace(serializers.deserialize(value,
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

class _$UsuarioRecord extends UsuarioRecord {
  @override
  final String? nombre;
  @override
  final String? usuario;
  @override
  final String? rol;
  @override
  final String? contrasena;
  @override
  final String? email;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final bool? anonimato;
  @override
  final LatLng? ubicacion;
  @override
  final BuiltList<DocumentReference<Object?>>? eventos;
  @override
  final BuiltList<DocumentReference<Object?>>? comunidades;
  @override
  final BuiltList<String>? eventosNombre;
  @override
  final BuiltList<String>? comunidadesNombre;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsuarioRecord([void Function(UsuarioRecordBuilder)? updates]) =>
      (new UsuarioRecordBuilder()..update(updates))._build();

  _$UsuarioRecord._(
      {this.nombre,
      this.usuario,
      this.rol,
      this.contrasena,
      this.email,
      this.createdTime,
      this.phoneNumber,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.anonimato,
      this.ubicacion,
      this.eventos,
      this.comunidades,
      this.eventosNombre,
      this.comunidadesNombre,
      this.ffRef})
      : super._();

  @override
  UsuarioRecord rebuild(void Function(UsuarioRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsuarioRecordBuilder toBuilder() => new UsuarioRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsuarioRecord &&
        nombre == other.nombre &&
        usuario == other.usuario &&
        rol == other.rol &&
        contrasena == other.contrasena &&
        email == other.email &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        anonimato == other.anonimato &&
        ubicacion == other.ubicacion &&
        eventos == other.eventos &&
        comunidades == other.comunidades &&
        eventosNombre == other.eventosNombre &&
        comunidadesNombre == other.comunidadesNombre &&
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
                                                                    $jc(
                                                                        0,
                                                                        nombre
                                                                            .hashCode),
                                                                    usuario
                                                                        .hashCode),
                                                                rol.hashCode),
                                                            contrasena
                                                                .hashCode),
                                                        email.hashCode),
                                                    createdTime.hashCode),
                                                phoneNumber.hashCode),
                                            displayName.hashCode),
                                        photoUrl.hashCode),
                                    uid.hashCode),
                                anonimato.hashCode),
                            ubicacion.hashCode),
                        eventos.hashCode),
                    comunidades.hashCode),
                eventosNombre.hashCode),
            comunidadesNombre.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsuarioRecord')
          ..add('nombre', nombre)
          ..add('usuario', usuario)
          ..add('rol', rol)
          ..add('contrasena', contrasena)
          ..add('email', email)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('anonimato', anonimato)
          ..add('ubicacion', ubicacion)
          ..add('eventos', eventos)
          ..add('comunidades', comunidades)
          ..add('eventosNombre', eventosNombre)
          ..add('comunidadesNombre', comunidadesNombre)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsuarioRecordBuilder
    implements Builder<UsuarioRecord, UsuarioRecordBuilder> {
  _$UsuarioRecord? _$v;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  String? _usuario;
  String? get usuario => _$this._usuario;
  set usuario(String? usuario) => _$this._usuario = usuario;

  String? _rol;
  String? get rol => _$this._rol;
  set rol(String? rol) => _$this._rol = rol;

  String? _contrasena;
  String? get contrasena => _$this._contrasena;
  set contrasena(String? contrasena) => _$this._contrasena = contrasena;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  bool? _anonimato;
  bool? get anonimato => _$this._anonimato;
  set anonimato(bool? anonimato) => _$this._anonimato = anonimato;

  LatLng? _ubicacion;
  LatLng? get ubicacion => _$this._ubicacion;
  set ubicacion(LatLng? ubicacion) => _$this._ubicacion = ubicacion;

  ListBuilder<DocumentReference<Object?>>? _eventos;
  ListBuilder<DocumentReference<Object?>> get eventos =>
      _$this._eventos ??= new ListBuilder<DocumentReference<Object?>>();
  set eventos(ListBuilder<DocumentReference<Object?>>? eventos) =>
      _$this._eventos = eventos;

  ListBuilder<DocumentReference<Object?>>? _comunidades;
  ListBuilder<DocumentReference<Object?>> get comunidades =>
      _$this._comunidades ??= new ListBuilder<DocumentReference<Object?>>();
  set comunidades(ListBuilder<DocumentReference<Object?>>? comunidades) =>
      _$this._comunidades = comunidades;

  ListBuilder<String>? _eventosNombre;
  ListBuilder<String> get eventosNombre =>
      _$this._eventosNombre ??= new ListBuilder<String>();
  set eventosNombre(ListBuilder<String>? eventosNombre) =>
      _$this._eventosNombre = eventosNombre;

  ListBuilder<String>? _comunidadesNombre;
  ListBuilder<String> get comunidadesNombre =>
      _$this._comunidadesNombre ??= new ListBuilder<String>();
  set comunidadesNombre(ListBuilder<String>? comunidadesNombre) =>
      _$this._comunidadesNombre = comunidadesNombre;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsuarioRecordBuilder() {
    UsuarioRecord._initializeBuilder(this);
  }

  UsuarioRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _usuario = $v.usuario;
      _rol = $v.rol;
      _contrasena = $v.contrasena;
      _email = $v.email;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _anonimato = $v.anonimato;
      _ubicacion = $v.ubicacion;
      _eventos = $v.eventos?.toBuilder();
      _comunidades = $v.comunidades?.toBuilder();
      _eventosNombre = $v.eventosNombre?.toBuilder();
      _comunidadesNombre = $v.comunidadesNombre?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsuarioRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsuarioRecord;
  }

  @override
  void update(void Function(UsuarioRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsuarioRecord build() => _build();

  _$UsuarioRecord _build() {
    _$UsuarioRecord _$result;
    try {
      _$result = _$v ??
          new _$UsuarioRecord._(
              nombre: nombre,
              usuario: usuario,
              rol: rol,
              contrasena: contrasena,
              email: email,
              createdTime: createdTime,
              phoneNumber: phoneNumber,
              displayName: displayName,
              photoUrl: photoUrl,
              uid: uid,
              anonimato: anonimato,
              ubicacion: ubicacion,
              eventos: _eventos?.build(),
              comunidades: _comunidades?.build(),
              eventosNombre: _eventosNombre?.build(),
              comunidadesNombre: _comunidadesNombre?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'eventos';
        _eventos?.build();
        _$failedField = 'comunidades';
        _comunidades?.build();
        _$failedField = 'eventosNombre';
        _eventosNombre?.build();
        _$failedField = 'comunidadesNombre';
        _comunidadesNombre?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UsuarioRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
