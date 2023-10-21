import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC-iA25ykEy6lgaCqXb2YXwOXMXtAzHBEg",
            authDomain: "tempus-creators-db.firebaseapp.com",
            projectId: "tempus-creators-db",
            storageBucket: "tempus-creators-db.appspot.com",
            messagingSenderId: "272451151531",
            appId: "1:272451151531:web:3262e9d3f34695cf6079ee",
            measurementId: "G-MHF2L02JPH"));
  } else {
    await Firebase.initializeApp();
  }
}
