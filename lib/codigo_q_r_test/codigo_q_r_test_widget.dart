import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'codigo_q_r_test_model.dart';
export 'codigo_q_r_test_model.dart';

class CodigoQRTestWidget extends StatefulWidget {
  const CodigoQRTestWidget({Key? key}) : super(key: key);

  @override
  _CodigoQRTestWidgetState createState() => _CodigoQRTestWidgetState();
}

class _CodigoQRTestWidgetState extends State<CodigoQRTestWidget> {
  late CodigoQRTestModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CodigoQRTestModel());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Page Title',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'por qué mierda esto no funciona AAAAAAAAAAAAAAAA',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyText1,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 280,
                    height: 280,
                    child: custom_widgets.QRCode(
                      width: 280,
                      height: 280,
                      qrSize: 280.0,
                      qrData: 'hola',
                      gapLess: true,
                      qrVersion: 1,
                      qrPadding: 16.0,
                      qrBorderRadius: 16.0,
                      semanticsLabel: 'hola',
                      qrBackgroundColor:
                          FlutterFlowTheme.of(context).primaryBtnText,
                      qrForegroundColor: FlutterFlowTheme.of(context).black600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
