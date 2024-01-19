import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String description;
  final String username;
  final String uid;
  final String postUrl;
  final String email;
  final String date;
  final String postId;
  final String profileImage;
  final List likes;

  Post({
    required this.description,
    required this.likes,
    required this.profileImage,
    required this.username,
    required this.postId,
    required this.date,
    required this.uid,
    required this.postUrl,
    required this.email,
  });

  Map<String, dynamic> toJson() => {
        'description': description,
        'date': date,
        'likes': likes,
        "postId": postId,
        'posturl': postUrl,
        'username': username,
        'uid': uid,
        'profileImage': profileImage,
        'email': email,
      };

  static Post fromSnap(DocumentSnapshot snapshot) {
    return Post(
      description: snapshot['description'],
      likes: snapshot['likes'],
      profileImage: snapshot['profileImage'],
      username: snapshot['username'],
      postId: snapshot['postId'],
      date: snapshot['date'],
      uid: snapshot['uid'],
      postUrl: snapshot['posturl'],
      email: snapshot['email'],
    );
  }
}
