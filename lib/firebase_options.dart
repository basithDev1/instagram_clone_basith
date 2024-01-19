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
    apiKey: 'AIzaSyDTs2hvkgmLuGy4_EzVxIM8hL-TEzumXJQ',
    appId: '1:666170510847:web:2a17866298a9fcd6c9ebca',
    messagingSenderId: '666170510847',
    projectId: 'instagram-clone-d08d2',
    authDomain: 'instagram-clone-d08d2.firebaseapp.com',
    storageBucket: 'instagram-clone-d08d2.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBrauhLsKBaxq99_PY3f7O09TW6U4V471U',
    appId: '1:666170510847:android:c46c433941c1da82c9ebca',
    messagingSenderId: '666170510847',
    projectId: 'instagram-clone-d08d2',
    storageBucket: 'instagram-clone-d08d2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAwt14m8IXhnGvHjVNFZkc7fwaEEhuOUqU',
    appId: '1:666170510847:ios:9f8b11f69785ebd7c9ebca',
    messagingSenderId: '666170510847',
    projectId: 'instagram-clone-d08d2',
    storageBucket: 'instagram-clone-d08d2.appspot.com',
    iosBundleId: 'com.example.instagramClone',
  );
}