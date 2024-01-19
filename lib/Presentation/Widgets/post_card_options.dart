import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/Application/Home/home_bloc.dart';
import 'package:instagram_clone/Infrastructure/FirebaseModels.dart/Post_model.dart';
import 'package:instagram_clone/Infrastructure/FirebaseModels.dart/User_model.dart';

class PostCardOptions extends StatelessWidget {
  final User user;
  final Post post;
  const PostCardOptions({super.key, required this.post, required this.user});

  @override
  Widget build(BuildContext context) {
    log(post.postId);
    return SizedBox(
      height: 240.w,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50.w,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {
                            BlocProvider.of<HomeBloc>(context).add(
                              HomeEvent.savePost(
                                uid: user.uid,
                                postId: post.postId,
                              ),
                            );
                          },
                          child: Container(
                            height: 50.w,
                            width: 100.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.black, // Outline color
                                width: 1.0, // Outline width
                              ),
                            ),
                            child: const Icon(Icons.save, size: 35),
                          ),
                        ),
                        state.isPostSaved
                            ? const Text('Unsave')
                            : const Text('Save')
                      ],
                    );
                  },
                ),
                Column(
                  children: [
                    Container(
                      height: 50.w,
                      width: 100.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.black, // Outline color
                          width: 1.0, // Outline width
                        ),
                      ),
                      child: const Icon(Icons.qr_code, size: 35),
                    ),
                    const Text('QR code')
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10.w,
            ),
            post.uid == user.uid
                ? GestureDetector(
                    onTap: () {
                      BlocProvider.of<HomeBloc>(context).add(
                        HomeEvent.deletePostEvent(postId: post.postId),
                      );

                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Delete',
                      style: TextStyle(fontSize: 20.w),
                    ),
                  )
                : const SizedBox(),
            post.uid != user.uid ? const Text('Favorite') : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
