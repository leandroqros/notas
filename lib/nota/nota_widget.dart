import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_media_display.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'nota_model.dart';
export 'nota_model.dart';

class NotaWidget extends StatefulWidget {
  const NotaWidget({Key? key}) : super(key: key);

  @override
  _NotaWidgetState createState() => _NotaWidgetState();
}

class _NotaWidgetState extends State<NotaWidget> {
  late NotaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotaModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        title: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                    child: FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 50,
                      icon: Icon(
                        Icons.arrow_back_rounded,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 30,
                      ),
                      onPressed: () async {
                        context.pop();
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                    child: Text(
                      'Back',
                      style: FlutterFlowTheme.of(context).title1.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 16,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: StreamBuilder<List<NotasPrincipalesRecord>>(
            stream: queryNotasPrincipalesRecord(
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
              List<NotasPrincipalesRecord> columnNotasPrincipalesRecordList =
                  snapshot.data!;
              // Return an empty Container when the item does not exist.
              if (snapshot.data!.isEmpty) {
                return Container();
              }
              final columnNotasPrincipalesRecord =
                  columnNotasPrincipalesRecordList.isNotEmpty
                      ? columnNotasPrincipalesRecordList.first
                      : null;
              return Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    columnNotasPrincipalesRecord!.titulo!,
                    style: FlutterFlowTheme.of(context).title2,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Color(0x2E000000),
                          offset: Offset(0, 2),
                        )
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                            child: Text(
                              columnNotasPrincipalesRecord!.fecha!.toString(),
                              style: FlutterFlowTheme.of(context)
                                  .subtitle1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                  ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 8, 20, 0),
                            child: Text(
                              columnNotasPrincipalesRecord!.nota!,
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
                            child: Text(
                              'Attachment',
                              style: FlutterFlowTheme.of(context).bodyText2,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
                            child: FlutterFlowMediaDisplay(
                              path: columnNotasPrincipalesRecord != null
                                  ? columnNotasPrincipalesRecord!.adjuntoFoto!
                                  : columnNotasPrincipalesRecord!.adjuntoVideo!,
                              imageBuilder: (path) => Image.network(
                                path,
                                width: double.infinity,
                                height: 300,
                                fit: BoxFit.cover,
                              ),
                              videoPlayerBuilder: (path) =>
                                  FlutterFlowVideoPlayer(
                                path: path,
                                width: 300,
                                autoPlay: false,
                                looping: true,
                                showControls: true,
                                allowFullScreen: true,
                                allowPlaybackSpeedMenu: false,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('CodigoQRTest');
                    },
                    text: 'Page QR',
                    options: FFButtonOptions(
                      width: 130,
                      height: 40,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                    child: Theme(
                      data: ThemeData(
                        unselectedWidgetColor: Color(0xFF95A1AC),
                      ),
                      child: CheckboxListTile(
                        value: _model.checkboxListTileValue ??= true,
                        onChanged: (newValue) async {
                          setState(
                              () => _model.checkboxListTileValue = newValue!);
                        },
                        title: Text(
                          'Compartir',
                          style: FlutterFlowTheme.of(context).subtitle2,
                        ),
                        tileColor: Color(0xFFF5F5F5),
                        activeColor: FlutterFlowTheme.of(context).primaryColor,
                        dense: false,
                        controlAffinity: ListTileControlAffinity.trailing,
                      ),
                    ),
                  ),
                  if (_model.checkboxListTileValue == true)
                    BarcodeWidget(
                      data: 'Barcode',
                      barcode: Barcode.qrCode(),
                      width: 350,
                      height: 350,
                      color: Colors.black,
                      backgroundColor: Colors.transparent,
                      errorBuilder: (_context, _error) => SizedBox(
                        width: 350,
                        height: 350,
                      ),
                      drawText: false,
                    ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
