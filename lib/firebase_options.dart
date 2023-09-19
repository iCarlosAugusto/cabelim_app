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
    apiKey: 'AIzaSyA8ghhOxHbFom5GLl4LQKDCSjENtyoMxT8',
    appId: '1:64936480815:web:2268f143ec2556d483b6da',
    messagingSenderId: '64936480815',
    projectId: 'cabelin',
    authDomain: 'cabelin.firebaseapp.com',
    storageBucket: 'cabelin.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAU-57J83_nEdmmszLvPS4ybgPmgUsVlfU',
    appId: '1:64936480815:android:07f8faab5030dfab83b6da',
    messagingSenderId: '64936480815',
    projectId: 'cabelin',
    storageBucket: 'cabelin.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyACkMx0CV7iBhHCh0Q2X2dy_j9DCkLFMZY',
    appId: '1:64936480815:ios:9505884c848116e483b6da',
    messagingSenderId: '64936480815',
    projectId: 'cabelin',
    storageBucket: 'cabelin.appspot.com',
    iosBundleId: 'com.example.cabelinApp',
  );
}
