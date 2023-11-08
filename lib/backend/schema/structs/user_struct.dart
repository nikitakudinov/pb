// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    String? id,
    String? username,
    String? avatar,
    String? collectionId,
    String? collectionName,
    String? created,
    bool? emailVisibility,
    String? name,
    String? nickname,
    String? tag,
    String? updated,
  })  : _id = id,
        _username = username,
        _avatar = avatar,
        _collectionId = collectionId,
        _collectionName = collectionName,
        _created = created,
        _emailVisibility = emailVisibility,
        _name = name,
        _nickname = nickname,
        _tag = tag,
        _updated = updated;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  set username(String? val) => _username = val;
  bool hasUsername() => _username != null;

  // "avatar" field.
  String? _avatar;
  String get avatar => _avatar ?? '';
  set avatar(String? val) => _avatar = val;
  bool hasAvatar() => _avatar != null;

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

  // "emailVisibility" field.
  bool? _emailVisibility;
  bool get emailVisibility => _emailVisibility ?? false;
  set emailVisibility(bool? val) => _emailVisibility = val;
  bool hasEmailVisibility() => _emailVisibility != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "nickname" field.
  String? _nickname;
  String get nickname => _nickname ?? '';
  set nickname(String? val) => _nickname = val;
  bool hasNickname() => _nickname != null;

  // "tag" field.
  String? _tag;
  String get tag => _tag ?? '';
  set tag(String? val) => _tag = val;
  bool hasTag() => _tag != null;

  // "updated" field.
  String? _updated;
  String get updated => _updated ?? '';
  set updated(String? val) => _updated = val;
  bool hasUpdated() => _updated != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        id: data['id'] as String?,
        username: data['username'] as String?,
        avatar: data['avatar'] as String?,
        collectionId: data['collectionId'] as String?,
        collectionName: data['collectionName'] as String?,
        created: data['created'] as String?,
        emailVisibility: data['emailVisibility'] as bool?,
        name: data['name'] as String?,
        nickname: data['nickname'] as String?,
        tag: data['tag'] as String?,
        updated: data['updated'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? UserStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'username': _username,
        'avatar': _avatar,
        'collectionId': _collectionId,
        'collectionName': _collectionName,
        'created': _created,
        'emailVisibility': _emailVisibility,
        'name': _name,
        'nickname': _nickname,
        'tag': _tag,
        'updated': _updated,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'username': serializeParam(
          _username,
          ParamType.String,
        ),
        'avatar': serializeParam(
          _avatar,
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
        'emailVisibility': serializeParam(
          _emailVisibility,
          ParamType.bool,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'nickname': serializeParam(
          _nickname,
          ParamType.String,
        ),
        'tag': serializeParam(
          _tag,
          ParamType.String,
        ),
        'updated': serializeParam(
          _updated,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        username: deserializeParam(
          data['username'],
          ParamType.String,
          false,
        ),
        avatar: deserializeParam(
          data['avatar'],
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
        emailVisibility: deserializeParam(
          data['emailVisibility'],
          ParamType.bool,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        nickname: deserializeParam(
          data['nickname'],
          ParamType.String,
          false,
        ),
        tag: deserializeParam(
          data['tag'],
          ParamType.String,
          false,
        ),
        updated: deserializeParam(
          data['updated'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        id == other.id &&
        username == other.username &&
        avatar == other.avatar &&
        collectionId == other.collectionId &&
        collectionName == other.collectionName &&
        created == other.created &&
        emailVisibility == other.emailVisibility &&
        name == other.name &&
        nickname == other.nickname &&
        tag == other.tag &&
        updated == other.updated;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        username,
        avatar,
        collectionId,
        collectionName,
        created,
        emailVisibility,
        name,
        nickname,
        tag,
        updated
      ]);
}

UserStruct createUserStruct({
  String? id,
  String? username,
  String? avatar,
  String? collectionId,
  String? collectionName,
  String? created,
  bool? emailVisibility,
  String? name,
  String? nickname,
  String? tag,
  String? updated,
}) =>
    UserStruct(
      id: id,
      username: username,
      avatar: avatar,
      collectionId: collectionId,
      collectionName: collectionName,
      created: created,
      emailVisibility: emailVisibility,
      name: name,
      nickname: nickname,
      tag: tag,
      updated: updated,
    );
