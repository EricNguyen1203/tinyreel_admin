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
        return macos;
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
    apiKey: 'AIzaSyD7v3gje4mjSqX_D6nVwNQPX9n7lW_cQ1M',
    appId: '1:126745522184:web:b28d9888f55f7fdd22a1bd',
    messagingSenderId: '126745522184',
    projectId: 'tinyreel2',
    authDomain: 'tinyreel2.firebaseapp.com',
    storageBucket: 'tinyreel2.appspot.com',
    measurementId: 'G-GSB11ZN079',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB1kswm3dtE7WFZauDaXmewotMn2k9OeD4',
    appId: '1:126745522184:android:5b8fb0a7ded30a9e22a1bd',
    messagingSenderId: '126745522184',
    projectId: 'tinyreel2',
    storageBucket: 'tinyreel2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDKPOIv5HnHluq3c-r1yxa-NqC89Gi-K_o',
    appId: '1:126745522184:ios:b1bdc0486609603622a1bd',
    messagingSenderId: '126745522184',
    projectId: 'tinyreel2',
    storageBucket: 'tinyreel2.appspot.com',
    iosBundleId: 'com.example.admin',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDKPOIv5HnHluq3c-r1yxa-NqC89Gi-K_o',
    appId: '1:126745522184:ios:2fef77ebb5090f6e22a1bd',
    messagingSenderId: '126745522184',
    projectId: 'tinyreel2',
    storageBucket: 'tinyreel2.appspot.com',
    iosBundleId: 'com.example.admin.RunnerTests',
  );
}