import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetalleComunidadPertenezcoWidget extends StatefulWidget {
  const DetalleComunidadPertenezcoWidget({
    Key? key,
    this.chatCPertenezco,
  }) : super(key: key);

  final ChatsCRecord? chatCPertenezco;

  @override
  _DetalleComunidadPertenezcoWidgetState createState() =>
      _DetalleComunidadPertenezcoWidgetState();
}

class _DetalleComunidadPertenezcoWidgetState
    extends State<DetalleComunidadPertenezcoWidget> {
  TextEditingController? textFieldDescripcionController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    textFieldDescripcionController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ComunidadesRecord>>(
      stream: queryComunidadesRecord(
        queryBuilder: (comunidadesRecord) => comunidadesRecord.where('Nombre',
            isEqualTo: widget.chatCPertenezco!.name),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        List<ComunidadesRecord>
            detalleComunidadPertenezcoComunidadesRecordList = snapshot.data!;
        // Return an empty Container when the document does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final detalleComunidadPertenezcoComunidadesRecord =
            detalleComunidadPertenezcoComunidadesRecordList.isNotEmpty
                ? detalleComunidadPertenezcoComunidadesRecordList.first
                : null;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          appBar: AppBar(
            backgroundColor: Color(0xFFFFFC00),
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () async {
                context.pop();
              },
            ),
            title: Text(
              detalleComunidadPertenezcoComunidadesRecord!.nombre!,
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).title2.override(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    fontSize: 22,
                  ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 2,
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 20, 20),
                            child: Container(
                              width: 120,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Color(0xFFF1F4F8),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0),
                                child: Image.network(
                                  valueOrDefault<String>(
                                    detalleComunidadPertenezcoComunidadesRecord!
                                        .photo,
                                    'https://th.bing.com/th/id/OIP.9pCU3v9iAKEJuINXFlFNcQHaEo?w=292&h=182&c=7&r=0&o=5&dpr=1.5&pid=1.7',
                                  ),
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 10),
                    child: TextFormField(
                      controller: textFieldDescripcionController ??=
                          TextEditingController(
                        text: valueOrDefault<String>(
                          detalleComunidadPertenezcoComunidadesRecord!
                              .descripcion,
                          'Sin descripcion',
                        ),
                      ),
                      onChanged: (_) => EasyDebounce.debounce(
                        'textFieldDescripcionController',
                        Duration(milliseconds: 2000),
                        () => setState(() {}),
                      ),
                      autofocus: true,
                      readOnly: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Descripcion',
                        labelStyle: FlutterFlowTheme.of(context).bodyText2,
                        hintStyle: FlutterFlowTheme.of(context).bodyText2,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFE1EDF9),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFE1EDF9),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        filled: true,
                        fillColor: FlutterFlowTheme.of(context).primaryBtnText,
                        contentPadding:
                            EdgeInsetsDirectional.fromSTEB(20, 24, 0, 24),
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1,
                      maxLines: 2,
                    ),
                  ),
                  Text(
                    'Integrantes',
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                  StreamBuilder<List<UsuarioRecord>>(
                    stream: queryUsuarioRecord(
                      queryBuilder: (usuarioRecord) => usuarioRecord.where(
                          'comunidadesNombre',
                          arrayContains:
                              detalleComunidadPertenezcoComunidadesRecord!
                                  .nombre),
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: CircularProgressIndicator(
                              color: FlutterFlowTheme.of(context).primaryColor,
                            ),
                          ),
                        );
                      }
                      List<UsuarioRecord> listViewUsuarioRecordList =
                          snapshot.data!;
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewUsuarioRecordList.length,
                        itemBuilder: (context, listViewIndex) {
                          final listViewUsuarioRecord =
                              listViewUsuarioRecordList[listViewIndex];
                          return Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 5, 20, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.network(
                                    valueOrDefault<String>(
                                      listViewUsuarioRecord.photoUrl,
                                      'https://th.bing.com/th/id/OIP.fqSvfYQB0rQ-6EG_oqvonQHaHa?w=198&h=198&c=7&r=0&o=5&dpr=1.5&pid=1.7',
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            7, 0, 0, 0),
                                        child: Text(
                                          listViewUsuarioRecord.nombre!,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                        ),
                                      ),
                                      Text(
                                        detalleComunidadPertenezcoComunidadesRecord!
                                                    .administrador ==
                                                listViewUsuarioRecord.reference
                                            ? 'Admin'
                                            : 'Member',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 10,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                      child: FFButtonWidget(
                        onPressed: () async {
                          if (currentUserReference ==
                              detalleComunidadPertenezcoComunidadesRecord!
                                  .administrador) {
                            context.pushNamed('MisChats');

                            final usuarioUpdateData = {
                              'comunidades': FieldValue.arrayRemove([
                                detalleComunidadPertenezcoComunidadesRecord!
                                    .reference
                              ]),
                              'comunidadesNombre': FieldValue.arrayRemove([
                                detalleComunidadPertenezcoComunidadesRecord!
                                    .nombre
                              ]),
                            };
                            await currentUserReference!
                                .update(usuarioUpdateData);
                            await detalleComunidadPertenezcoComunidadesRecord!
                                .reference
                                .delete();
                            await widget.chatCPertenezco!.reference.delete();
                            return;
                          } else {
                            final comunidadesUpdateData = {
                              'participantes': FieldValue.arrayRemove(
                                  [currentUserReference]),
                              'participantesEmails':
                                  FieldValue.arrayRemove([currentUserEmail]),
                            };
                            await detalleComunidadPertenezcoComunidadesRecord!
                                .reference
                                .update(comunidadesUpdateData);

                            final usuarioUpdateData = {
                              'comunidades': FieldValue.arrayRemove([
                                detalleComunidadPertenezcoComunidadesRecord!
                                    .reference
                              ]),
                              'comunidadesNombre': FieldValue.arrayRemove([
                                detalleComunidadPertenezcoComunidadesRecord!
                                    .nombre
                              ]),
                            };
                            await currentUserReference!
                                .update(usuarioUpdateData);

                            final chatsCUpdateData = {
                              'users': FieldValue.arrayRemove(
                                  [currentUserReference]),
                            };
                            await widget.chatCPertenezco!.reference
                                .update(chatsCUpdateData);

                            context.pushNamed('MisChats');

                            return;
                          }
                        },
                        text: 'Salir',
                        options: FFButtonOptions(
                          width: 140,
                          height: 40,
                          color: Color(0xFFFF0003),
                          textStyle: FlutterFlowTheme.of(context)
                              .subtitle2
                              .override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                              ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
