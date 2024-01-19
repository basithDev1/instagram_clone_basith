import 'package:cloud_firestore/cloud_firestore.dart';

class CommentModel {
  final String profilePic;
  final String comment;
  final Timestamp date;
  final String postId;
  final String uid;
  final String username;

  CommentModel(
      {required this.profilePic,
      required this.comment,
      required this.date,
      required this.postId,
      required this.uid,
      required this.username});

  // static CommentModel fromSnap() {
  //   return CommentModel(
  //       profilePic: profilePic,
  //       comment: comment,
  //       date: date,
  //       postId: postId,
  //       uid: uid,
  //       username: username);
  // }
}
