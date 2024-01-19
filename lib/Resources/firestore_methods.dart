import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:instagram_clone/Infrastructure/FirebaseModels.dart/Post_model.dart';
import 'package:instagram_clone/Infrastructure/FirebaseModels.dart/User_model.dart';

import 'package:uuid/uuid.dart';

class FireStoreMethods {
  final _firestore = FirebaseFirestore.instance;
  Future<String> uploadPost(String? description, file, String? uid,
      String? profileImage, String? username, String? email) async {
    String res = 'Something went wrong';
    try {
      final postId = const Uuid().v1();

      Post post = Post(
        likes: [],
        profileImage: profileImage ?? '',
        username: username ?? '',
        postId: postId,
        date: DateTime.now().toString(),
        uid: uid ?? '',
        postUrl: file,
        email: email ?? '',
        description: description ?? '',
      );

      _firestore.collection('posts').doc(postId).set(post.toJson());
      res = 'sucess';

      log(res);

      return res;
    } catch (e) {
      log("resss  $res");
      res = e.toString();
      return res;
    }
  }

  Stream<List<Post>> getAllPost() {
    log('Function called get post');
    return _firestore
        .collection('posts')
        .orderBy("date", descending: true)
        .snapshots()
        .map(
      (snapshot) {
        return snapshot.docs.map((e) => Post.fromSnap(e)).toList();
      },
    );
  }

  Future<void> likePost(String uid, String postId, List like) async {
    try {
      log("likescalled");
      if (like.contains(uid)) {
        await _firestore.collection('posts').doc(postId).update(
          {
            "likes": FieldValue.arrayRemove([uid]),
          },
        );
      } else {
        await _firestore.collection('posts').doc(postId).update({
          'likes': FieldValue.arrayUnion([uid])
        });
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> postComments(
      {required User user,
      required String postId,
      required String comment}) async {
    try {
      if (comment.isNotEmpty) {
        final commentId = const Uuid().v1();
        await _firestore
            .collection('posts')
            .doc(postId)
            .collection('comments')
            .doc(commentId)
            .set({
          'ProfilePic': user.photoUrl,
          'uid': user.uid,
          'postId': postId,
          'comment': comment,
          'username': user.username,
          'datePublished': DateTime.now()
        });
      } else {
        log('text is empty');
        return;
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Stream<List<QueryDocumentSnapshot>> getComments({required String postId}) {
    return _firestore
        .collection('posts')
        .doc(postId)
        .collection('comments')
        .orderBy('datePublished', descending: true)
        .snapshots()
        .map((snapshot) => snapshot.docs);
  }

  Future<void> deletePost({required String postId}) async {
    try {
      await _firestore.collection('posts').doc(postId).delete();
    } catch (e) {
      log(e.toString());
    }
  }

  Stream<List<User>> getAllUser() {
    return _firestore.collection('users').snapshots().map(
      (snapshot) {
        return snapshot.docs.map(
          (doc) {
            return User.fromSnap(doc);
          },
        ).toList();
      },
    );
  }

  Future<String> followUser(String uid, String friendUid) async {
    log('function called');
    String res = "";
    try {
      final snap = await _firestore.collection('users').doc(uid).get();
      List following = (snap.data() as dynamic)['following'];
      if (following.contains(friendUid)) {
        await _firestore.collection('users').doc(friendUid).update({
          'followers': FieldValue.arrayRemove([uid])
        });

        await _firestore.collection('users').doc(uid).update({
          'following': FieldValue.arrayRemove([friendUid])
        });
        res = "removed";
      } else {
        await _firestore.collection('users').doc(friendUid).update({
          'followers': FieldValue.arrayUnion([uid])
        });

        await _firestore.collection('users').doc(uid).update({
          'following': FieldValue.arrayUnion([friendUid])
        });
        res = "added";
      }

      return res;
    } catch (e) {
      log(e.toString());
      res = 'error';
      return res;
    }
  }

  Future<String> savePost(String postId, String uid) async {
    String res = "";
    try {
      final snap = await _firestore.collection('users').doc(uid).get();
      List savedPost = (snap.data() as dynamic)['savedPost'];
      if (savedPost.contains(postId)) {
        await _firestore.collection('users').doc(uid).update({
          "savedPost": FieldValue.arrayRemove([postId])
        });
        res = "postUnSaved";

        return res;
      } else {
        await _firestore.collection('users').doc(uid).update({
          "savedPost": FieldValue.arrayUnion([postId])
        });
        res = "postSaved";

        return res;
      }
    } catch (e) {
      log(e.toString());
      res = e.toString();
      return res;
    }
  }
}
