import 'dart:async';

import '/backend/schema/structs/index.dart';
import 'custom_auth_user_provider.dart';

export 'custom_auth_manager.dart';

class CustomAuthManager {
  String? authenticationToken;
  String? refreshToken;
  DateTime? tokenExpiration;

  Future signOut() async {
    authenticationToken = null;
    refreshToken = null;
    tokenExpiration = null;
    // Update the current user.
    pocketbaseAuthUserSubject.add(
      PocketbaseAuthUser(loggedIn: false),
    );
  }

  Future<PocketbaseAuthUser?> signIn({
    String? authenticationToken,
    String? refreshToken,
    DateTime? tokenExpiration,
    String? authUid,
    UserStruct? userData,
  }) async =>
      _updateCurrentUser(
        authenticationToken: authenticationToken,
        refreshToken: refreshToken,
        tokenExpiration: tokenExpiration,
        authUid: authUid,
        userData: userData,
      );

  void updateAuthUserData({
    String? authenticationToken,
    String? refreshToken,
    DateTime? tokenExpiration,
    String? authUid,
    UserStruct? userData,
  }) {
    assert(
      currentUser?.loggedIn ?? false,
      'User must be logged in to update auth user data.',
    );

    _updateCurrentUser(
      authenticationToken: authenticationToken,
      refreshToken: refreshToken,
      tokenExpiration: tokenExpiration,
      authUid: authUid,
      userData: userData,
    );
  }

  PocketbaseAuthUser? _updateCurrentUser({
    String? authenticationToken,
    String? refreshToken,
    DateTime? tokenExpiration,
    String? authUid,
    UserStruct? userData,
  }) {
    this.authenticationToken = authenticationToken;
    this.refreshToken = refreshToken;
    this.tokenExpiration = tokenExpiration;
    // Update the current user stream.
    final updatedUser = PocketbaseAuthUser(
      loggedIn: true,
      uid: authUid,
      userData: userData,
    );
    pocketbaseAuthUserSubject.add(updatedUser);
    return updatedUser;
  }
}

PocketbaseAuthUser? currentUser;
bool get loggedIn => currentUser != null;
