import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_count_controller.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class CrearEventoWidget extends StatefulWidget {
  const CrearEventoWidget({
    Key? key,
    this.eventosExistentes,
  }) : super(key: key);

  final List<EventosRecord>? eventosExistentes;

  @override
  _CrearEventoWidgetState createState() => _CrearEventoWidgetState();
}

class _CrearEventoWidgetState extends State<CrearEventoWidget> {
  bool isMediaUploading = false;
  String uploadedFileUrl = '';

  DateTime? datePicked1;
  TextEditingController? textFieldDescripcionController;
  TextEditingController? textFieldNombreController;
  TextEditingController? textFieldLugarController;
  DateTime? datePicked2;
  DateTime? datePicked3;
  bool? switchValue;
  int? countControllerValue;
  DateTime? datePicked4;
  EventosRecord? eventoCreado;
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final formKey3 = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    textFieldDescripcionController = TextEditingController();
    textFieldNombreController = TextEditingController();
    textFieldLugarController = TextEditingController();
  }

  @override
  void dispose() {
    textFieldDescripcionController?.dispose();
    textFieldNombreController?.dispose();
    textFieldLugarController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
          'Crear Evento',
          textAlign: TextAlign.center,
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.black,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: SelectionArea(
                  child: Text(
                'Nuevo Evento',
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Poppins',
                      fontSize: 24,
                    ),
              )),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 15, 20, 15),
                    child: TextFormField(
                      controller: textFieldNombreController,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Nombre',
                        labelStyle: FlutterFlowTheme.of(context).bodyText2,
                        hintText: 'Ingrese el nombre del evento',
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
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 15),
                    child: TextFormField(
                      controller: textFieldDescripcionController,
                      onChanged: (_) => EasyDebounce.debounce(
                        'textFieldDescripcionController',
                        Duration(milliseconds: 2000),
                        () => setState(() {}),
                      ),
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Descripcion',
                        labelStyle: FlutterFlowTheme.of(context).bodyText2,
                        hintText: 'Ingrese una descipcion',
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
                        suffixIcon:
                            textFieldDescripcionController!.text.isNotEmpty
                                ? InkWell(
                                    onTap: () async {
                                      textFieldDescripcionController?.clear();
                                      setState(() {});
                                    },
                                    child: Icon(
                                      Icons.clear,
                                      color: Color(0xFF757575),
                                      size: 22,
                                    ),
                                  )
                                : null,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 8),
                    child: TextFormField(
                      controller: textFieldLugarController,
                      onChanged: (_) => EasyDebounce.debounce(
                        'textFieldLugarController',
                        Duration(milliseconds: 2000),
                        () => setState(() {}),
                      ),
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Lugar',
                        labelStyle: FlutterFlowTheme.of(context).bodyText2,
                        hintText: 'Ingrese un lugar',
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
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 5),
              child: SelectionArea(
                  child: Text(
                'Selecciona fecha inicio',
                style: FlutterFlowTheme.of(context).bodyText2,
              )),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 8),
              child: InkWell(
                onTap: () async {
                  await DatePicker.showDatePicker(
                    context,
                    showTitleActions: true,
                    onConfirm: (date) {
                      setState(() => datePicked1 = date);
                    },
                    currentTime: getCurrentTimestamp,
                    minTime: getCurrentTimestamp,
                  );
                },
                child: Container(
                  width: 350,
                  height: 60,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Color(0xFFE1EDF9),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Form(
                          key: formKey2,
                          autovalidateMode: AutovalidateMode.disabled,
                          child: SelectionArea(
                              child: Text(
                            dateTimeFormat('yMMMd', datePicked1),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          )),
                        ),
                        Icon(
                          Icons.calendar_today,
                          color: Color(0xFF95A1AC),
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 5),
              child: SelectionArea(
                  child: Text(
                'Elige horas del evento ',
                style: FlutterFlowTheme.of(context).bodyText2,
              )),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () async {
                      await DatePicker.showTimePicker(
                        context,
                        showTitleActions: true,
                        onConfirm: (date) {
                          setState(() => datePicked2 = date);
                        },
                        currentTime: getCurrentTimestamp,
                      );
                    },
                    child: Container(
                      width: 160,
                      height: 60,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Color(0xFFE1EDF9),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Form(
                              key: formKey3,
                              autovalidateMode: AutovalidateMode.disabled,
                              child: SelectionArea(
                                  child: Text(
                                dateTimeFormat('jm', datePicked2),
                                style: FlutterFlowTheme.of(context).bodyText1,
                              )),
                            ),
                            Icon(
                              Icons.calendar_today,
                              color: Color(0xFF95A1AC),
                              size: 24,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await DatePicker.showTimePicker(
                        context,
                        showTitleActions: true,
                        onConfirm: (date) {
                          setState(() => datePicked3 = date);
                        },
                        currentTime: getCurrentTimestamp,
                      );
                    },
                    child: Container(
                      width: 160,
                      height: 60,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: Color(0xFFE1EDF9),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Form(
                              key: formKey1,
                              autovalidateMode: AutovalidateMode.disabled,
                              child: SelectionArea(
                                  child: Text(
                                dateTimeFormat('jm', datePicked3),
                                style: FlutterFlowTheme.of(context).bodyText1,
                              )),
                            ),
                            Icon(
                              Icons.calendar_today,
                              color: Color(0xFF95A1AC),
                              size: 24,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                  child: Text(
                    'Recurrente',
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                  child: Switch.adaptive(
                    value: switchValue ??= false,
                    onChanged: (newValue) async {
                      setState(() => switchValue = newValue!);
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 15),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                    child: Text(
                      'Cada',
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                    child: Container(
                      width: 140,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: Color(0xFFE1EDF9),
                          width: 1,
                        ),
                      ),
                      child: FlutterFlowCountController(
                        decrementIconBuilder: (enabled) => FaIcon(
                          FontAwesomeIcons.minus,
                          color:
                              enabled ? Color(0xDD000000) : Color(0xFFEEEEEE),
                          size: 20,
                        ),
                        incrementIconBuilder: (enabled) => FaIcon(
                          FontAwesomeIcons.plus,
                          color: enabled ? Colors.blue : Color(0xFFEEEEEE),
                          size: 20,
                        ),
                        countBuilder: (count) => Text(
                          count.toString(),
                          style: GoogleFonts.getFont(
                            'Roboto',
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        count: countControllerValue ??= 0,
                        updateCount: (count) =>
                            setState(() => countControllerValue = count),
                        stepSize: 1,
                      ),
                    ),
                  ),
                  SelectionArea(
                      child: Text(
                    'dias',
                    style: FlutterFlowTheme.of(context).bodyText1,
                  )),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 5),
              child: SelectionArea(
                  child: Text(
                'Selecciona fecha fin del evento',
                style: FlutterFlowTheme.of(context).bodyText2,
              )),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 8),
              child: InkWell(
                onTap: () async {
                  await DatePicker.showDatePicker(
                    context,
                    showTitleActions: true,
                    onConfirm: (date) {
                      setState(() => datePicked4 = date);
                    },
                    currentTime: getCurrentTimestamp,
                    minTime: getCurrentTimestamp,
                  );
                },
                child: Container(
                  width: 350,
                  height: 60,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Color(0xFFE1EDF9),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SelectionArea(
                            child: Text(
                          dateTimeFormat('yMMMd', datePicked4),
                          style: FlutterFlowTheme.of(context).bodyText1,
                        )),
                        Icon(
                          Icons.calendar_today,
                          color: Color(0xFF95A1AC),
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Text(
                  'Subir Imagen',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(100, 0, 100, 0),
              child: InkWell(
                onTap: () async {
                  final selectedMedia = await selectMediaWithSourceBottomSheet(
                    context: context,
                    allowPhoto: true,
                  );
                  if (selectedMedia != null &&
                      selectedMedia.every(
                          (m) => validateFileFormat(m.storagePath, context))) {
                    setState(() => isMediaUploading = true);
                    var downloadUrls = <String>[];
                    try {
                      showUploadMessage(
                        context,
                        'Uploading file...',
                        showLoading: true,
                      );
                      downloadUrls = (await Future.wait(
                        selectedMedia.map(
                          (m) async => await uploadData(m.storagePath, m.bytes),
                        ),
                      ))
                          .where((u) => u != null)
                          .map((u) => u!)
                          .toList();
                    } finally {
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      isMediaUploading = false;
                    }
                    if (downloadUrls.length == selectedMedia.length) {
                      setState(() => uploadedFileUrl = downloadUrls.first);
                      showUploadMessage(context, 'Success!');
                    } else {
                      setState(() {});
                      showUploadMessage(context, 'Failed to upload media');
                      return;
                    }
                  }

                  setState(
                      () => FFAppState().photoPathEvento = uploadedFileUrl);
                },
                child: Image.network(
                  valueOrDefault<String>(
                    FFAppState().photoPathEvento,
                    'data:image/jpeg;base64,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',
                  ),
                  width: 100,
                  height: 100,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 50),
                child: FFButtonWidget(
                  onPressed: () async {
                    var _shouldSetState = false;
                    if ((textFieldNombreController!.text != null &&
                            textFieldNombreController!.text != '') &&
                        (textFieldLugarController!.text != null &&
                            textFieldLugarController!.text != '') &&
                        (datePicked1 != null) &&
                        (datePicked2! < datePicked3!)) {
                      if (switchValue == true) {
                        if (!((datePicked4 != null) &&
                            (datePicked1! < datePicked4!) &&
                            (countControllerValue! > 0))) {
                          if (_shouldSetState) setState(() {});
                          return;
                        }
                      } else {
                        if (!(datePicked4 == null)) {
                          if (_shouldSetState) setState(() {});
                          return;
                        }
                      }
                    } else {
                      if (_shouldSetState) setState(() {});
                      return;
                    }

                    final eventosCreateData = {
                      ...createEventosRecordData(
                        nombre: textFieldNombreController!.text,
                        descripcion: textFieldDescripcionController!.text,
                        repetitivo: switchValue,
                        photo: FFAppState().photoPathEvento,
                        lugar: textFieldLugarController!.text,
                        administrador: currentUserReference,
                        fechaFin: datePicked4,
                        horaInicio: datePicked2,
                        horaFin: datePicked3,
                        cantidadDias: countControllerValue,
                        fechaInicio: datePicked1,
                        activo: false,
                      ),
                      'participantes': [currentUserReference],
                      'participantesEmails': [currentUserEmail],
                    };
                    var eventosRecordReference = EventosRecord.collection.doc();
                    await eventosRecordReference.set(eventosCreateData);
                    eventoCreado = EventosRecord.getDocumentFromData(
                        eventosCreateData, eventosRecordReference);
                    _shouldSetState = true;

                    final chatsCreateData = {
                      ...createChatsRecordData(
                        evento: eventoCreado!.reference,
                        name: eventoCreado!.nombre,
                        photo: eventoCreado!.photo,
                      ),
                      'users': [currentUserReference],
                    };
                    await ChatsRecord.collection.doc().set(chatsCreateData);

                    final usuarioUpdateData = {
                      'eventos':
                          FieldValue.arrayUnion([eventoCreado!.reference]),
                      'eventosNombre': FieldValue.arrayUnion(
                          [textFieldNombreController!.text]),
                    };
                    await currentUserReference!.update(usuarioUpdateData);

                    context.goNamed('MisChats');

                    setState(() => FFAppState().photoPathEvento = '');
                    if (_shouldSetState) setState(() {});
                  },
                  text: 'Crear',
                  options: FFButtonOptions(
                    width: 250,
                    height: 50,
                    color: Color(0xFFFFFC00),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
