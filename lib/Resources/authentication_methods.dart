import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:instagram_clone/Infrastructure/FirebaseModels.dart/User_model.dart'
    as model;

import 'package:instagram_clone/Resources/storage_methods.dart';

class AuthMethod {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> signUp({
    required String email,
    required String password,
    required Uint8List image,
    required String username,
  }) async {
    String res = 'Something Went Wrong';
    try {
      if (email.isNotEmpty ||
          password.isNotEmpty ||
          username.isNotEmpty ||
          image.isNotEmpty) {
        final UserCredential _cred = await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );

        final _downloadUrl = await StorageMethods().storeUserImage(
          'profilePic',
          image,
          false,
        );
        model.User user = model.User(
          username: username,
          uid: _cred.user!.uid,
          photoUrl: _downloadUrl,
          email: email,
          password: password,
          following: [],
          followers: [],
          savedPost: [],
        );

        _firestore.collection('users').doc(_cred.user!.uid).set(user.toJson());
        res = 'succesful';

        return res;
      }
    } catch (e) {
      res = e.toString();

      return res;
    }
    return res;
  }

  Future<String> loginUser({
    required String email,
    required String password,
  }) async {
    String res = 'Somthing went wrong';
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        res = 'succesful';
        return res;
      }
      //  else {
      //   res = 'Email or Password is incorrect';
      //   return res;
      // }
    } catch (e) {
      res = e.toString();
      return res;
    }
    return res;
  }

  Future<model.User> getUserDetails() async {
    User currentUser = _auth.currentUser!;

    DocumentSnapshot snapShot =
        await _firestore.collection('users').doc(currentUser.uid).get();

    return model.User.fromSnap(snapShot);
  }

  Stream<List<model.User>> getAllUser() {
    return _firestore.collection("users").snapshots().map((snapshot) {
      final userList =
          snapshot.docs.map((e) => model.User.fromSnap(e)).toList();

      return userList;
    });
  }

  Future<String> signOutUser() async {
    String res = "";
    try {
      await _auth.signOut();
      res = "signedOut";
      return res;
    } catch (e) {
      res = "notsignedOut";
      return res;
    }
  }
}
