import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'notas_principales_record.g.dart';

abstract class NotasPrincipalesRecord
    implements Built<NotasPrincipalesRecord, NotasPrincipalesRecordBuilder> {
  static Serializer<NotasPrincipalesRecord> get serializer =>
      _$notasPrincipalesRecordSerializer;

  int? get id;

  String? get nota;

  DateTime? get fecha;

  LatLng? get localizacion;

  String? get contrasena;

  int? get libro;

  String? get titulo;

  String? get adjuntoFoto;

  String? get adjuntoVideo;

  String? get adjuntoAudio;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(NotasPrincipalesRecordBuilder builder) =>
      builder
        ..id = 0
        ..nota = ''
        ..contrasena = ''
        ..libro = 0
        ..titulo = ''
        ..adjuntoFoto = ''
        ..adjuntoVideo = ''
        ..adjuntoAudio = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notasPrincipales');

  static Stream<NotasPrincipalesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NotasPrincipalesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NotasPrincipalesRecord._();
  factory NotasPrincipalesRecord(
          [void Function(NotasPrincipalesRecordBuilder) updates]) =
      _$NotasPrincipalesRecord;

  static NotasPrincipalesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNotasPrincipalesRecordData({
  int? id,
  String? nota,
  DateTime? fecha,
  LatLng? localizacion,
  String? contrasena,
  int? libro,
  String? titulo,
  String? adjuntoFoto,
  String? adjuntoVideo,
  String? adjuntoAudio,
}) {
  final firestoreData = serializers.toFirestore(
    NotasPrincipalesRecord.serializer,
    NotasPrincipalesRecord(
      (n) => n
        ..id = id
        ..nota = nota
        ..fecha = fecha
        ..localizacion = localizacion
        ..contrasena = contrasena
        ..libro = libro
        ..titulo = titulo
        ..adjuntoFoto = adjuntoFoto
        ..adjuntoVideo = adjuntoVideo
        ..adjuntoAudio = adjuntoAudio,
    ),
  );

  return firestoreData;
}
