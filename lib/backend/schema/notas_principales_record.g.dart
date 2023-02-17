// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notas_principales_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NotasPrincipalesRecord> _$notasPrincipalesRecordSerializer =
    new _$NotasPrincipalesRecordSerializer();

class _$NotasPrincipalesRecordSerializer
    implements StructuredSerializer<NotasPrincipalesRecord> {
  @override
  final Iterable<Type> types = const [
    NotasPrincipalesRecord,
    _$NotasPrincipalesRecord
  ];
  @override
  final String wireName = 'NotasPrincipalesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, NotasPrincipalesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.nota;
    if (value != null) {
      result
        ..add('nota')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fecha;
    if (value != null) {
      result
        ..add('fecha')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.localizacion;
    if (value != null) {
      result
        ..add('localizacion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.contrasena;
    if (value != null) {
      result
        ..add('contrasena')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.libro;
    if (value != null) {
      result
        ..add('libro')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.titulo;
    if (value != null) {
      result
        ..add('titulo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.adjuntoFoto;
    if (value != null) {
      result
        ..add('adjuntoFoto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.adjuntoVideo;
    if (value != null) {
      result
        ..add('adjuntoVideo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.adjuntoAudio;
    if (value != null) {
      result
        ..add('adjuntoAudio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  NotasPrincipalesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotasPrincipalesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'nota':
          result.nota = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fecha':
          result.fecha = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'localizacion':
          result.localizacion = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'contrasena':
          result.contrasena = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'libro':
          result.libro = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'titulo':
          result.titulo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'adjuntoFoto':
          result.adjuntoFoto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'adjuntoVideo':
          result.adjuntoVideo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'adjuntoAudio':
          result.adjuntoAudio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$NotasPrincipalesRecord extends NotasPrincipalesRecord {
  @override
  final int? id;
  @override
  final String? nota;
  @override
  final DateTime? fecha;
  @override
  final LatLng? localizacion;
  @override
  final String? contrasena;
  @override
  final int? libro;
  @override
  final String? titulo;
  @override
  final String? adjuntoFoto;
  @override
  final String? adjuntoVideo;
  @override
  final String? adjuntoAudio;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NotasPrincipalesRecord(
          [void Function(NotasPrincipalesRecordBuilder)? updates]) =>
      (new NotasPrincipalesRecordBuilder()..update(updates))._build();

  _$NotasPrincipalesRecord._(
      {this.id,
      this.nota,
      this.fecha,
      this.localizacion,
      this.contrasena,
      this.libro,
      this.titulo,
      this.adjuntoFoto,
      this.adjuntoVideo,
      this.adjuntoAudio,
      this.ffRef})
      : super._();

  @override
  NotasPrincipalesRecord rebuild(
          void Function(NotasPrincipalesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotasPrincipalesRecordBuilder toBuilder() =>
      new NotasPrincipalesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotasPrincipalesRecord &&
        id == other.id &&
        nota == other.nota &&
        fecha == other.fecha &&
        localizacion == other.localizacion &&
        contrasena == other.contrasena &&
        libro == other.libro &&
        titulo == other.titulo &&
        adjuntoFoto == other.adjuntoFoto &&
        adjuntoVideo == other.adjuntoVideo &&
        adjuntoAudio == other.adjuntoAudio &&
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
                                    $jc($jc($jc(0, id.hashCode), nota.hashCode),
                                        fecha.hashCode),
                                    localizacion.hashCode),
                                contrasena.hashCode),
                            libro.hashCode),
                        titulo.hashCode),
                    adjuntoFoto.hashCode),
                adjuntoVideo.hashCode),
            adjuntoAudio.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotasPrincipalesRecord')
          ..add('id', id)
          ..add('nota', nota)
          ..add('fecha', fecha)
          ..add('localizacion', localizacion)
          ..add('contrasena', contrasena)
          ..add('libro', libro)
          ..add('titulo', titulo)
          ..add('adjuntoFoto', adjuntoFoto)
          ..add('adjuntoVideo', adjuntoVideo)
          ..add('adjuntoAudio', adjuntoAudio)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NotasPrincipalesRecordBuilder
    implements Builder<NotasPrincipalesRecord, NotasPrincipalesRecordBuilder> {
  _$NotasPrincipalesRecord? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _nota;
  String? get nota => _$this._nota;
  set nota(String? nota) => _$this._nota = nota;

  DateTime? _fecha;
  DateTime? get fecha => _$this._fecha;
  set fecha(DateTime? fecha) => _$this._fecha = fecha;

  LatLng? _localizacion;
  LatLng? get localizacion => _$this._localizacion;
  set localizacion(LatLng? localizacion) => _$this._localizacion = localizacion;

  String? _contrasena;
  String? get contrasena => _$this._contrasena;
  set contrasena(String? contrasena) => _$this._contrasena = contrasena;

  int? _libro;
  int? get libro => _$this._libro;
  set libro(int? libro) => _$this._libro = libro;

  String? _titulo;
  String? get titulo => _$this._titulo;
  set titulo(String? titulo) => _$this._titulo = titulo;

  String? _adjuntoFoto;
  String? get adjuntoFoto => _$this._adjuntoFoto;
  set adjuntoFoto(String? adjuntoFoto) => _$this._adjuntoFoto = adjuntoFoto;

  String? _adjuntoVideo;
  String? get adjuntoVideo => _$this._adjuntoVideo;
  set adjuntoVideo(String? adjuntoVideo) => _$this._adjuntoVideo = adjuntoVideo;

  String? _adjuntoAudio;
  String? get adjuntoAudio => _$this._adjuntoAudio;
  set adjuntoAudio(String? adjuntoAudio) => _$this._adjuntoAudio = adjuntoAudio;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NotasPrincipalesRecordBuilder() {
    NotasPrincipalesRecord._initializeBuilder(this);
  }

  NotasPrincipalesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _nota = $v.nota;
      _fecha = $v.fecha;
      _localizacion = $v.localizacion;
      _contrasena = $v.contrasena;
      _libro = $v.libro;
      _titulo = $v.titulo;
      _adjuntoFoto = $v.adjuntoFoto;
      _adjuntoVideo = $v.adjuntoVideo;
      _adjuntoAudio = $v.adjuntoAudio;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotasPrincipalesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotasPrincipalesRecord;
  }

  @override
  void update(void Function(NotasPrincipalesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotasPrincipalesRecord build() => _build();

  _$NotasPrincipalesRecord _build() {
    final _$result = _$v ??
        new _$NotasPrincipalesRecord._(
            id: id,
            nota: nota,
            fecha: fecha,
            localizacion: localizacion,
            contrasena: contrasena,
            libro: libro,
            titulo: titulo,
            adjuntoFoto: adjuntoFoto,
            adjuntoVideo: adjuntoVideo,
            adjuntoAudio: adjuntoAudio,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
