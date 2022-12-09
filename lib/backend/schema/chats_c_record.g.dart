// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chats_c_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChatsCRecord> _$chatsCRecordSerializer =
    new _$ChatsCRecordSerializer();

class _$ChatsCRecordSerializer implements StructuredSerializer<ChatsCRecord> {
  @override
  final Iterable<Type> types = const [ChatsCRecord, _$ChatsCRecord];
  @override
  final String wireName = 'ChatsCRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ChatsCRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.users;
    if (value != null) {
      result
        ..add('users')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.lastMessage;
    if (value != null) {
      result
        ..add('last_message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastMessageTime;
    if (value != null) {
      result
        ..add('last_message_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.lastMessageSeenBy;
    if (value != null) {
      result
        ..add('last_message_seen_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.lastMessageSentBy;
    if (value != null) {
      result
        ..add('last_message_sent_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photo;
    if (value != null) {
      result
        ..add('photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.comunidad;
    if (value != null) {
      result
        ..add('comunidad')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  ChatsCRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChatsCRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'users':
          result.users.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'last_message':
          result.lastMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'last_message_time':
          result.lastMessageTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'last_message_seen_by':
          result.lastMessageSeenBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'last_message_sent_by':
          result.lastMessageSentBy = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo':
          result.photo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'comunidad':
          result.comunidad = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$ChatsCRecord extends ChatsCRecord {
  @override
  final BuiltList<DocumentReference<Object?>>? users;
  @override
  final String? lastMessage;
  @override
  final DateTime? lastMessageTime;
  @override
  final BuiltList<DocumentReference<Object?>>? lastMessageSeenBy;
  @override
  final DocumentReference<Object?>? lastMessageSentBy;
  @override
  final String? name;
  @override
  final String? photo;
  @override
  final DocumentReference<Object?>? comunidad;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ChatsCRecord([void Function(ChatsCRecordBuilder)? updates]) =>
      (new ChatsCRecordBuilder()..update(updates))._build();

  _$ChatsCRecord._(
      {this.users,
      this.lastMessage,
      this.lastMessageTime,
      this.lastMessageSeenBy,
      this.lastMessageSentBy,
      this.name,
      this.photo,
      this.comunidad,
      this.ffRef})
      : super._();

  @override
  ChatsCRecord rebuild(void Function(ChatsCRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatsCRecordBuilder toBuilder() => new ChatsCRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatsCRecord &&
        users == other.users &&
        lastMessage == other.lastMessage &&
        lastMessageTime == other.lastMessageTime &&
        lastMessageSeenBy == other.lastMessageSeenBy &&
        lastMessageSentBy == other.lastMessageSentBy &&
        name == other.name &&
        photo == other.photo &&
        comunidad == other.comunidad &&
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
                                $jc($jc(0, users.hashCode),
                                    lastMessage.hashCode),
                                lastMessageTime.hashCode),
                            lastMessageSeenBy.hashCode),
                        lastMessageSentBy.hashCode),
                    name.hashCode),
                photo.hashCode),
            comunidad.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChatsCRecord')
          ..add('users', users)
          ..add('lastMessage', lastMessage)
          ..add('lastMessageTime', lastMessageTime)
          ..add('lastMessageSeenBy', lastMessageSeenBy)
          ..add('lastMessageSentBy', lastMessageSentBy)
          ..add('name', name)
          ..add('photo', photo)
          ..add('comunidad', comunidad)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ChatsCRecordBuilder
    implements Builder<ChatsCRecord, ChatsCRecordBuilder> {
  _$ChatsCRecord? _$v;

  ListBuilder<DocumentReference<Object?>>? _users;
  ListBuilder<DocumentReference<Object?>> get users =>
      _$this._users ??= new ListBuilder<DocumentReference<Object?>>();
  set users(ListBuilder<DocumentReference<Object?>>? users) =>
      _$this._users = users;

  String? _lastMessage;
  String? get lastMessage => _$this._lastMessage;
  set lastMessage(String? lastMessage) => _$this._lastMessage = lastMessage;

  DateTime? _lastMessageTime;
  DateTime? get lastMessageTime => _$this._lastMessageTime;
  set lastMessageTime(DateTime? lastMessageTime) =>
      _$this._lastMessageTime = lastMessageTime;

  ListBuilder<DocumentReference<Object?>>? _lastMessageSeenBy;
  ListBuilder<DocumentReference<Object?>> get lastMessageSeenBy =>
      _$this._lastMessageSeenBy ??=
          new ListBuilder<DocumentReference<Object?>>();
  set lastMessageSeenBy(
          ListBuilder<DocumentReference<Object?>>? lastMessageSeenBy) =>
      _$this._lastMessageSeenBy = lastMessageSeenBy;

  DocumentReference<Object?>? _lastMessageSentBy;
  DocumentReference<Object?>? get lastMessageSentBy =>
      _$this._lastMessageSentBy;
  set lastMessageSentBy(DocumentReference<Object?>? lastMessageSentBy) =>
      _$this._lastMessageSentBy = lastMessageSentBy;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _photo;
  String? get photo => _$this._photo;
  set photo(String? photo) => _$this._photo = photo;

  DocumentReference<Object?>? _comunidad;
  DocumentReference<Object?>? get comunidad => _$this._comunidad;
  set comunidad(DocumentReference<Object?>? comunidad) =>
      _$this._comunidad = comunidad;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ChatsCRecordBuilder() {
    ChatsCRecord._initializeBuilder(this);
  }

  ChatsCRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _users = $v.users?.toBuilder();
      _lastMessage = $v.lastMessage;
      _lastMessageTime = $v.lastMessageTime;
      _lastMessageSeenBy = $v.lastMessageSeenBy?.toBuilder();
      _lastMessageSentBy = $v.lastMessageSentBy;
      _name = $v.name;
      _photo = $v.photo;
      _comunidad = $v.comunidad;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatsCRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChatsCRecord;
  }

  @override
  void update(void Function(ChatsCRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatsCRecord build() => _build();

  _$ChatsCRecord _build() {
    _$ChatsCRecord _$result;
    try {
      _$result = _$v ??
          new _$ChatsCRecord._(
              users: _users?.build(),
              lastMessage: lastMessage,
              lastMessageTime: lastMessageTime,
              lastMessageSeenBy: _lastMessageSeenBy?.build(),
              lastMessageSentBy: lastMessageSentBy,
              name: name,
              photo: photo,
              comunidad: comunidad,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'users';
        _users?.build();

        _$failedField = 'lastMessageSeenBy';
        _lastMessageSeenBy?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ChatsCRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
