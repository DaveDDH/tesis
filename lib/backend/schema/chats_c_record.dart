import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'chats_c_record.g.dart';

abstract class ChatsCRecord
    implements Built<ChatsCRecord, ChatsCRecordBuilder> {
  static Serializer<ChatsCRecord> get serializer => _$chatsCRecordSerializer;

  BuiltList<DocumentReference>? get users;

  @BuiltValueField(wireName: 'last_message')
  String? get lastMessage;

  @BuiltValueField(wireName: 'last_message_time')
  DateTime? get lastMessageTime;

  @BuiltValueField(wireName: 'last_message_seen_by')
  BuiltList<DocumentReference>? get lastMessageSeenBy;

  @BuiltValueField(wireName: 'last_message_sent_by')
  DocumentReference? get lastMessageSentBy;

  String? get name;

  String? get photo;

  DocumentReference? get comunidad;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ChatsCRecordBuilder builder) => builder
    ..users = ListBuilder()
    ..lastMessage = ''
    ..lastMessageSeenBy = ListBuilder()
    ..name = ''
    ..photo = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chatsC');

  static Stream<ChatsCRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ChatsCRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ChatsCRecord._();
  factory ChatsCRecord([void Function(ChatsCRecordBuilder) updates]) =
      _$ChatsCRecord;

  static ChatsCRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createChatsCRecordData({
  String? lastMessage,
  DateTime? lastMessageTime,
  DocumentReference? lastMessageSentBy,
  String? name,
  String? photo,
  DocumentReference? comunidad,
}) {
  final firestoreData = serializers.toFirestore(
    ChatsCRecord.serializer,
    ChatsCRecord(
      (c) => c
        ..users = null
        ..lastMessage = lastMessage
        ..lastMessageTime = lastMessageTime
        ..lastMessageSeenBy = null
        ..lastMessageSentBy = lastMessageSentBy
        ..name = name
        ..photo = photo
        ..comunidad = comunidad,
    ),
  );

  return firestoreData;
}
