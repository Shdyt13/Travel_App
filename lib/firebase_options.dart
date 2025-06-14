// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDCMOFQjYItzb_IXvwpNyFEzClcdsI296E',
    appId: '1:440779266765:web:9f4f287fed4afacf512784',
    messagingSenderId: '440779266765',
    projectId: 'wisataapp-26147',
    authDomain: 'wisataapp-26147.firebaseapp.com',
    storageBucket: 'wisataapp-26147.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDiL7_jP1hCAev6PI4idYK9xv1ksCIisY8',
    appId: '1:440779266765:android:c6b1495d8258855f512784',
    messagingSenderId: '440779266765',
    projectId: 'wisataapp-26147',
    storageBucket: 'wisataapp-26147.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB4aGy1Xop7a1vyc6vLBhFQGu3S9cPY-O4',
    appId: '1:440779266765:ios:f30d0a03e24ca4b5512784',
    messagingSenderId: '440779266765',
    projectId: 'wisataapp-26147',
    storageBucket: 'wisataapp-26147.firebasestorage.app',
    iosBundleId: 'com.example.wisataApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB4aGy1Xop7a1vyc6vLBhFQGu3S9cPY-O4',
    appId: '1:440779266765:ios:f30d0a03e24ca4b5512784',
    messagingSenderId: '440779266765',
    projectId: 'wisataapp-26147',
    storageBucket: 'wisataapp-26147.firebasestorage.app',
    iosBundleId: 'com.example.wisataApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDCMOFQjYItzb_IXvwpNyFEzClcdsI296E',
    appId: '1:440779266765:web:a7fe6509d9fef64a512784',
    messagingSenderId: '440779266765',
    projectId: 'wisataapp-26147',
    authDomain: 'wisataapp-26147.firebaseapp.com',
    storageBucket: 'wisataapp-26147.firebasestorage.app',
  );
}
