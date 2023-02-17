import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class NotasFirebaseUser {
  NotasFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

NotasFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<NotasFirebaseUser> notasFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<NotasFirebaseUser>(
      (user) {
        currentUser = NotasFirebaseUser(user);
        return currentUser!;
      },
    );
