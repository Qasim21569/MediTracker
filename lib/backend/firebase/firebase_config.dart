import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCFYKd1rv2lTxhxVIUKxatyKo8POyfpCl0",
            authDomain: "meditracker-ae730.firebaseapp.com",
            projectId: "meditracker-ae730",
            storageBucket: "meditracker-ae730.appspot.com",
            messagingSenderId: "662687225977",
            appId: "1:662687225977:web:977d07162e3d7635fa5ca8",
            measurementId: "G-ND298RHXVD"));
  } else {
    await Firebase.initializeApp();
  }
}
