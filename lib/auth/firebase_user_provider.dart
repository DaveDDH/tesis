import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class TesisFirebaseUser {
  TesisFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

TesisFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<TesisFirebaseUser> tesisFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<TesisFirebaseUser>(
      (user) {
        currentUser = TesisFirebaseUser(user);
        return currentUser!;
      },
    );
