import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDS4ulvi8PTj_jEtUC21SYQ9pEj-I_F1dg",
            authDomain: "my-recipe-f9e46.firebaseapp.com",
            projectId: "my-recipe-f9e46",
            storageBucket: "my-recipe-f9e46.appspot.com",
            messagingSenderId: "951622433275",
            appId: "1:951622433275:web:6de5d7a206fa7a9413735e",
            measurementId: "G-EWGP5S4NS0"));
  } else {
    await Firebase.initializeApp();
  }
}
