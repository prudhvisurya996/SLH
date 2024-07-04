import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class HospitalityPlatformAuthUser {
  HospitalityPlatformAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<HospitalityPlatformAuthUser>
    hospitalityPlatformAuthUserSubject =
    BehaviorSubject.seeded(HospitalityPlatformAuthUser(loggedIn: false));
Stream<HospitalityPlatformAuthUser> hospitalityPlatformAuthUserStream() =>
    hospitalityPlatformAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
