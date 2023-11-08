// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TournamentStruct extends BaseStruct {
  TournamentStruct({
    String? id,
    String? collectionId,
    String? collectionName,
    String? created,
    String? updated,
    String? tournamentName,
    String? tournamentTag,
  })  : _id = id,
        _collectionId = collectionId,
        _collectionName = collectionName,
        _created = created,
        _updated = updated,
        _tournamentName = tournamentName,
        _tournamentTag = tournamentTag;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "collectionId" field.
  String? _collectionId;
  String get collectionId => _collectionId ?? '';
  set collectionId(String? val) => _collectionId = val;
  bool hasCollectionId() => _collectionId != null;

  // "collectionName" field.
  String? _collectionName;
  String get collectionName => _collectionName ?? '';
  set collectionName(String? val) => _collectionName = val;
  bool hasCollectionName() => _collectionName != null;

  // "created" field.
  String? _created;
  String get created => _created ?? '';
  set created(String? val) => _created = val;
  bool hasCreated() => _created != null;

  // "updated" field.
  String? _updated;
  String get updated => _updated ?? '';
  set updated(String? val) => _updated = val;
  bool hasUpdated() => _updated != null;

  // "tournamentName" field.
  String? _tournamentName;
  String get tournamentName => _tournamentName ?? '';
  set tournamentName(String? val) => _tournamentName = val;
  bool hasTournamentName() => _tournamentName != null;

  // "tournamentTag" field.
  String? _tournamentTag;
  String get tournamentTag => _tournamentTag ?? '';
  set tournamentTag(String? val) => _tournamentTag = val;
  bool hasTournamentTag() => _tournamentTag != null;

  static TournamentStruct fromMap(Map<String, dynamic> data) =>
      TournamentStruct(
        id: data['id'] as String?,
        collectionId: data['collectionId'] as String?,
        collectionName: data['collectionName'] as String?,
        created: data['created'] as String?,
        updated: data['updated'] as String?,
        tournamentName: data['tournamentName'] as String?,
        tournamentTag: data['tournamentTag'] as String?,
      );

  static TournamentStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? TournamentStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'collectionId': _collectionId,
        'collectionName': _collectionName,
        'created': _created,
        'updated': _updated,
        'tournamentName': _tournamentName,
        'tournamentTag': _tournamentTag,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'collectionId': serializeParam(
          _collectionId,
          ParamType.String,
        ),
        'collectionName': serializeParam(
          _collectionName,
          ParamType.String,
        ),
        'created': serializeParam(
          _created,
          ParamType.String,
        ),
        'updated': serializeParam(
          _updated,
          ParamType.String,
        ),
        'tournamentName': serializeParam(
          _tournamentName,
          ParamType.String,
        ),
        'tournamentTag': serializeParam(
          _tournamentTag,
          ParamType.String,
        ),
      }.withoutNulls;

  static TournamentStruct fromSerializableMap(Map<String, dynamic> data) =>
      TournamentStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        collectionId: deserializeParam(
          data['collectionId'],
          ParamType.String,
          false,
        ),
        collectionName: deserializeParam(
          data['collectionName'],
          ParamType.String,
          false,
        ),
        created: deserializeParam(
          data['created'],
          ParamType.String,
          false,
        ),
        updated: deserializeParam(
          data['updated'],
          ParamType.String,
          false,
        ),
        tournamentName: deserializeParam(
          data['tournamentName'],
          ParamType.String,
          false,
        ),
        tournamentTag: deserializeParam(
          data['tournamentTag'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TournamentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TournamentStruct &&
        id == other.id &&
        collectionId == other.collectionId &&
        collectionName == other.collectionName &&
        created == other.created &&
        updated == other.updated &&
        tournamentName == other.tournamentName &&
        tournamentTag == other.tournamentTag;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        collectionId,
        collectionName,
        created,
        updated,
        tournamentName,
        tournamentTag
      ]);
}

TournamentStruct createTournamentStruct({
  String? id,
  String? collectionId,
  String? collectionName,
  String? created,
  String? updated,
  String? tournamentName,
  String? tournamentTag,
}) =>
    TournamentStruct(
      id: id,
      collectionId: collectionId,
      collectionName: collectionName,
      created: created,
      updated: updated,
      tournamentName: tournamentName,
      tournamentTag: tournamentTag,
    );
