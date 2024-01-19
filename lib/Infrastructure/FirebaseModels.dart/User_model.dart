import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String username;
  final String uid;
  final String photoUrl;
  final String email;
  final String password;
  final List following;
  final List followers;
  final List savedPost;
  User(
      {required this.savedPost,
      required this.username,
      required this.uid,
      required this.photoUrl,
      required this.email,
      required this.password,
      required this.following,
      required this.followers});

  static User isEmpty() {
    return User(
        username: "",
        uid: "",
        photoUrl: "",
        email: "",
        password: "",
        following: [],
        followers: [],
        savedPost: []);
  }

  Map<String, dynamic> toJson() => {
        'username': username,
        'uid': uid,
        'photoUrl': photoUrl,
        'email': email,
        'password': password,
        'following': following,
        'followers': followers,
        'savedPost': savedPost
      };

  static User fromSnap(DocumentSnapshot snap) {
    var snapShot = snap.data() as Map<String, dynamic>;

    return User(
      username: snapShot['username'] ?? '',
      uid: snapShot['uid'],
      photoUrl: snapShot['photoUrl'],
      email: snapShot['email'],
      password: snapShot['password'],
      following: snapShot['following'],
      followers: snapShot['followers'],
      savedPost: snapShot['savedPost'],
    );
  }
}
