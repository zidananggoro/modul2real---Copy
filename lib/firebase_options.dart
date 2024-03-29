// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCoR0JLUaSAz_asFMProetldjPB3yGUGpk',
    appId: '1:859877992939:web:cde21637427aecdbb051ae',
    messagingSenderId: '859877992939',
    projectId: 'film-project-78a6b',
    authDomain: 'film-project-78a6b.firebaseapp.com',
    storageBucket: 'film-project-78a6b.appspot.com',
    measurementId: 'G-FB7X6QJZ8J',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBj07wYpn1ViLbHZhJoaY5zARrmS8iHN_k',
    appId: '1:859877992939:android:000f45ae3c153825b051ae',
    messagingSenderId: '859877992939',
    projectId: 'film-project-78a6b',
    storageBucket: 'film-project-78a6b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAQ7XkRXHEC0qY6VAx_v7S39f2uNXYvNwc',
    appId: '1:859877992939:ios:871febb4460dfda3b051ae',
    messagingSenderId: '859877992939',
    projectId: 'film-project-78a6b',
    storageBucket: 'film-project-78a6b.appspot.com',
    iosClientId: '859877992939-feh0amoao5ogl52inmd5mls4go4ou4h1.apps.googleusercontent.com',
    iosBundleId: 'com.example.cinemovieApp',
  );
}
