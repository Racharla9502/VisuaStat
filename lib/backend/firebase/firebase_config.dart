import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyB187ogaekEJZ-vLemamVTZWNJGd7NsjwU",
            authDomain: "visua-stat-2jjo9n.firebaseapp.com",
            projectId: "visua-stat-2jjo9n",
            storageBucket: "visua-stat-2jjo9n.appspot.com",
            messagingSenderId: "4341598921",
            appId: "1:4341598921:web:f64071420df76dcff41b18"));
  } else {
    await Firebase.initializeApp();
  }
}
