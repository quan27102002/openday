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
    apiKey: 'AIzaSyA2F5aGFhXI9gRo__wiT2HtzUNf1kc9R3k',
    appId: '1:334832513181:web:4afe6e6f46a15fae3e6474',
    messagingSenderId: '334832513181',
    projectId: 'openda-747a9',
    authDomain: 'openda-747a9.firebaseapp.com',
    storageBucket: 'openda-747a9.appspot.com',
    measurementId: 'G-GC8SJSK2K1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA3LFyFlAlo9gt5uE5-2YYDaOpbNwebGrM',
    appId: '1:334832513181:android:c04c5233869587423e6474',
    messagingSenderId: '334832513181',
    projectId: 'openda-747a9',
    storageBucket: 'openda-747a9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAPFqrSgA5XWjek-CMqOYn33RNTW5_JYoQ',
    appId: '1:334832513181:ios:8ac6ba2657f481d23e6474',
    messagingSenderId: '334832513181',
    projectId: 'openda-747a9',
    storageBucket: 'openda-747a9.appspot.com',
    iosBundleId: 'com.example.openday',
  );
}
