import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../auth/firebase_user_provider.dart';

import 'package:firebase_database/firebase_database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'dart:async';

class ChatComunidadDetailsWidget extends StatefulWidget {
  const ChatComunidadDetailsWidget({
    Key? key,
    this.chatCRef,
    this.comunidadAsoChat,
  }) : super(key: key);

  final ChatsCRecord? chatCRef;
  final ComunidadesRecord? comunidadAsoChat;

  @override
  _ChatComunidadDetailsWidgetState createState() =>
      _ChatComunidadDetailsWidgetState();
}

class _ChatComunidadDetailsWidgetState
    extends State<ChatComunidadDetailsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  List<Widget> chats = [];
  var userName = '';
  var mWidth = 0.0;
  final ScrollController _sc = ScrollController();
  var mt;

  var wordBlackList = [
    'puto', 'puta', 'malparido', 'malparida', 'gonorrea',
    'hijueputa', 'nigger', 'zorra', 'pirobo', 'piroba', 'tetranutra',
    'tetrahijeuputa', 'marica', 'marico', 'lacra', 'perra',
    'chimbo', 'gurrupleta', 'joto', 'garbimba', 'imbecil', 'imbécil', 'idiota',
    'mongólico', 'mongolico', 'mongólica', 'mongolica','agüeonao','baboso','cabrón','cagado','chocho','chupapenes','comemierda',
    'conchetumadre','coño','culiabierto','culeado','gilipollas','joputa','jueputa','hp',
    'pelmazo','lameculo','lambón','malcogida','mamarrabos','mamón','pajuo','pajero','pijo','pija',
    'soplapingas','soplapollas','tontolculo','choto','ojete','pete','atolondrado','balurdo',
    'bazofia','bobalicón','cachón','cacorro','caremonda','carechimba','corroncho',
    'coscorria','culipronta','fufa','fufurufa','garnupia','gonorriento','guaricha','jetón','insornia',
    'maricón','mamerto','mediocre','menso','morronga','muérgano','patirrajado','percanta',
    'petardo','pichurria','tontarron','zunga','zuripanta',
  ];

  void preprocessBlackList() {
    for (var i = 0; i < wordBlackList.length; i++) {
      wordBlackList[i] = simplifyToken(wordBlackList[i]);
    }
  }

  bool check(txt) {
    var mTokens = txt.trim().toLowerCase().split(' ');
    var bannedWordNotFound = true;
    for (var i = 0; i < mTokens.length && bannedWordNotFound; i++) {
      var mToken = simplifyToken(mTokens[i]);
      for (var j = 0; j < wordBlackList.length && bannedWordNotFound; j++) {
        if (wordBlackList[j] == mToken) {
          bannedWordNotFound = false;
          print('Found invalid word: $mToken');
        }
      }
    }
    return bannedWordNotFound;
  }

  String simplifyToken(token) {
    var mToken = removeLetterLikeNumbers(token);
    mToken = removeConsecutiveDuplicates(mToken);
    mToken = removePlurals(mToken);
    return mToken;
  }

  String removeConsecutiveDuplicates(token) {
    var lastChar = token[0];
    var marks = [true];
    for(var i = 1; i < token.length; i++) {
      if (token[i] == lastChar) {
        marks.addAll([false]);
      } else {
        marks.addAll([true]);
        lastChar = token[i];
      }
    }
    var str = '';
    for(var i = 0; i < token.length; i++) {
      if (marks[i]) str += token[i];
    }
    return str;
  }

  String removeLetterLikeNumbers(token) {
    var mToken = token.replaceAll('4', 'a');
    mToken = mToken.replaceAll('5', 's');
    mToken = mToken.replaceAll('1', 'i');
    mToken = mToken.replaceAll('0', 'o');
    mToken = mToken.replaceAll('3', 'e');
    mToken = mToken.replaceAll('6', 'g');
    mToken = mToken.replaceAll('7', 't');
    mToken = mToken.replaceAll('8', 'b');
    mToken = mToken.replaceAll('9', 'q');
    return mToken;
  }

  String removePlurals(token) {
    var mToken = token;
    var last = token[token.length - 1];
    if (last == 's') mToken = token.substring(0, token.length - 1);
    return mToken;
  }

  @override
  void initState() {
    preprocessBlackList();
    getChats(widget.chatCRef);
  }

  @override
  Widget build(BuildContext context) {
    mWidth = MediaQuery.of(context).size.width;
    mt = TextEditingController();
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 70,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFC00),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: Icon(
                        Icons.arrow_back,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 30,
                      ),
                      onPressed: () async {
                        context.pop();
                      },
                    ),
                    Expanded(
                      child: SelectionArea(
                          child: Text(
                            widget.chatCRef!.name!,
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context).title1,
                          )),
                    ),
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: Icon(
                        Icons.format_list_bulleted,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 30,
                      ),
                      onPressed: () async {
                        context.pushNamed(
                          'DetalleComunidadPertenezco',
                          queryParams: {
                            'chatCPertenezco': serializeParam(
                              widget.chatCRef,
                              ParamType.Document,
                            ),
                          }.withoutNulls,
                          extra: <String, dynamic>{
                            'chatCPertenezco': widget.chatCRef,
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: SingleChildScrollView(
                    controller: _sc,
                    child: Column(
                      children: chats,
                    ),
                  )
              ),
              Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                child: TextField(
                  textInputAction: TextInputAction.send,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Escribe un mensaje',
                    prefixIcon: Icon(Icons.send),
                  ),
                  onSubmitted: (value) {
                    sendChat(context, widget.chatCRef, value);
                  },
                ),
              )
            ],
          )
        ),
      ),
    );
  }


  void sendChat(context, chatref, message) {
    mt.text = '';
    if(check(message)) {
      var uid = currentUser?.user?.uid;
      DatabaseReference ref = FirebaseDatabase.instance.ref().child('chatsc/' + chatref.comunidad.id);
      ref.push().set({
        'sender': uid,
        'senderName': userName,
        'message': message
      });
      CollectionReference chats = FirebaseFirestore.instance.collection('chatsC');
      chats.doc(chatref.reference.id).update({'last_message': message});
    } else {
      final scaffold = ScaffoldMessenger.of(context);
      scaffold.showSnackBar(
        SnackBar(
          content: const Text('Se detectó una grosería.'),
        ),
      );
    }
  }

  void getChats(chatref) {
    var uid = currentUser?.user?.uid;
    DatabaseReference ref = FirebaseDatabase.instance.ref().child('chatsc/' + chatref.comunidad.id);

    CollectionReference users = FirebaseFirestore.instance.collection('Usuario');
    users.doc(uid).get().then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        var name = documentSnapshot.get('Nombre');
        userName = name;
      }
    });

    ref.onValue.listen((DatabaseEvent event) {
      setState(() {
        chats = [];
      });
      event.snapshot.children.forEach((element) {
        var mUid = element.child('sender').value.toString();
        var mAlign = Alignment.topLeft;
        if (mUid == uid) mAlign = Alignment.topRight;
        setState(() {
          chats.add(
              Align(
                alignment: mAlign,
                child: Container(
                  width: mWidth * 0.7,
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        element.child('senderName').value.toString(),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(element.child('message').value.toString())
                    ],
                  ),
                ),
              )
          );
        });
      });
      Timer(Duration(milliseconds: 200), () => _sc.jumpTo(_sc.position.maxScrollExtent));
    });
  }
}

