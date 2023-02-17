import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDkeFPcm9H1VGJwI-D3BhF1wkXqMCtrfdo",
            authDomain: "bloquedenotas.firebaseapp.com",
            projectId: "bloquedenotas",
            storageBucket: "bloquedenotas.appspot.com",
            messagingSenderId: "68773859863",
            appId: "1:68773859863:web:3cb546c517ea8377798252"));
  } else {
    await Firebase.initializeApp();
  }
}
