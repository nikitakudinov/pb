import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class PocketbaseAuthUser {
  PocketbaseAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  UserStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<PocketbaseAuthUser> pocketbaseAuthUserSubject =
    BehaviorSubject.seeded(PocketbaseAuthUser(loggedIn: false));
Stream<PocketbaseAuthUser> pocketbaseAuthUserStream() =>
    pocketbaseAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
