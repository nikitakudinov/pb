// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    String? id,
    String? collectionId,
    String? collectionName,
    String? username,
    String? verified,
    String? emailVisibility,
    String? email,
    String? created,
    String? updated,
    String? name,
    String? avatar,
    String? nickname,
    String? tag,
  })  : _id = id,
        _collectionId = collectionId,
        _collectionName = collectionName,
        _username = username,
        _verified = verified,
        _emailVisibility = emailVisibility,
        _email = email,
        _created = created,
        _updated = updated,
        _name = name,
        _avatar = avatar,
        _nickname = nickname,
        _tag = tag;

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

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  set username(String? val) => _username = val;
  bool hasUsername() => _username != null;

  // "verified" field.
  String? _verified;
  String get verified => _verified ?? '';
  set verified(String? val) => _verified = val;
  bool hasVerified() => _verified != null;

  // "emailVisibility" field.
  String? _emailVisibility;
  String get emailVisibility => _emailVisibility ?? '';
  set emailVisibility(String? val) => _emailVisibility = val;
  bool hasEmailVisibility() => _emailVisibility != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

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

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "avatar" field.
  String? _avatar;
  String get avatar => _avatar ?? '';
  set avatar(String? val) => _avatar = val;
  bool hasAvatar() => _avatar != null;

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

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        id: data['id'] as String?,
        collectionId: data['collectionId'] as String?,
        collectionName: data['collectionName'] as String?,
        username: data['username'] as String?,
        verified: data['verified'] as String?,
        emailVisibility: data['emailVisibility'] as String?,
        email: data['email'] as String?,
        created: data['created'] as String?,
        updated: data['updated'] as String?,
        name: data['name'] as String?,
        avatar: data['avatar'] as String?,
        nickname: data['nickname'] as String?,
        tag: data['tag'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? UserStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'collectionId': _collectionId,
        'collectionName': _collectionName,
        'username': _username,
        'verified': _verified,
        'emailVisibility': _emailVisibility,
        'email': _email,
        'created': _created,
        'updated': _updated,
        'name': _name,
        'avatar': _avatar,
        'nickname': _nickname,
        'tag': _tag,
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
        'username': serializeParam(
          _username,
          ParamType.String,
        ),
        'verified': serializeParam(
          _verified,
          ParamType.String,
        ),
        'emailVisibility': serializeParam(
          _emailVisibility,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
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
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'avatar': serializeParam(
          _avatar,
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
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
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
        username: deserializeParam(
          data['username'],
          ParamType.String,
          false,
        ),
        verified: deserializeParam(
          data['verified'],
          ParamType.String,
          false,
        ),
        emailVisibility: deserializeParam(
          data['emailVisibility'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
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
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        avatar: deserializeParam(
          data['avatar'],
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
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        id == other.id &&
        collectionId == other.collectionId &&
        collectionName == other.collectionName &&
        username == other.username &&
        verified == other.verified &&
        emailVisibility == other.emailVisibility &&
        email == other.email &&
        created == other.created &&
        updated == other.updated &&
        name == other.name &&
        avatar == other.avatar &&
        nickname == other.nickname &&
        tag == other.tag;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        collectionId,
        collectionName,
        username,
        verified,
        emailVisibility,
        email,
        created,
        updated,
        name,
        avatar,
        nickname,
        tag
      ]);
}

UserStruct createUserStruct({
  String? id,
  String? collectionId,
  String? collectionName,
  String? username,
  String? verified,
  String? emailVisibility,
  String? email,
  String? created,
  String? updated,
  String? name,
  String? avatar,
  String? nickname,
  String? tag,
}) =>
    UserStruct(
      id: id,
      collectionId: collectionId,
      collectionName: collectionName,
      username: username,
      verified: verified,
      emailVisibility: emailVisibility,
      email: email,
      created: created,
      updated: updated,
      name: name,
      avatar: avatar,
      nickname: nickname,
      tag: tag,
    );
