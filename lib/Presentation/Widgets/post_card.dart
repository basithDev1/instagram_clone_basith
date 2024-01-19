import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/Application/Home/home_bloc.dart';
import 'package:instagram_clone/Infrastructure/FirebaseModels.dart/Post_model.dart';
import 'package:instagram_clone/Infrastructure/FirebaseModels.dart/User_model.dart';
import 'package:instagram_clone/Presentation/Widgets/like_animation.dart';
import 'package:instagram_clone/Presentation/Widgets/post_card_options.dart';
import 'package:instagram_clone/Presentation/comment_screen.dart';

class PostCard extends StatelessWidget {
  final Post post;
  final String uid;
  final User user;
  final ValueNotifier<bool> isAnimating = ValueNotifier(false);

  PostCard({
    super.key,
    required this.post,
    required this.uid,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 430.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(5.0.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.black,
                  backgroundImage: NetworkImage(post.profileImage),
                ),
                SizedBox(width: 5.w),
                Text(
                  post.username,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: () {
                        BlocProvider.of<HomeBloc>(context).add(
                            HomeEvent.checkingPostWeatherSaved(
                                postId: post.postId));
                        showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return PostCardOptions(
                                post: post,
                                user: user,
                              );
                            });
                      },
                      child: const Icon(Icons.more_vert),
                    ),
                  ),
                )
              ],
            ),
          ),
          ValueListenableBuilder<bool>(
              valueListenable: isAnimating,
              builder: (context, value, _) {
                return GestureDetector(
                  onDoubleTap: () {
                    isAnimating.value = true;

                    BlocProvider.of<HomeBloc>(context).add(
                      HomeEvent.likeButtonPressedEvent(
                        postId: post.postId,
                        likeList: post.likes,
                      ),
                    );
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        height: 250.w,
                        width: double.infinity,
                        child: Image.network(
                          post.postUrl,
                          fit: BoxFit.fill,
                        ),
                      ),
                      AnimatedOpacity(
                        duration: const Duration(milliseconds: 200),
                        opacity: value ? 1 : 0,
                        child: LikeAnimation(
                          isAnimatig: post.likes.contains(uid),
                          duration: const Duration(milliseconds: 400),
                          onEnd: () {
                            isAnimating.value = false;
                          },
                          child: const Icon(
                            Icons.favorite,
                            size: 100,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }),
          SizedBox(
            height: 5.w,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              children: [
                // LikeAnimation(
                //   isAnimatig: post.likes.contains(uid),
                //   smallLike: true,
                //   child:
                IconButton(
                  icon: post.likes.contains(uid)
                      ? const Icon(Icons.favorite)
                      : const Icon(Icons.favorite_outline_outlined),
                  iconSize: 35.sp,
                  color: post.likes.contains(uid) ? Colors.red : Colors.black,
                  onPressed: () {
                    BlocProvider.of<HomeBloc>(context).add(
                      HomeEvent.likeButtonPressedEvent(
                        postId: post.postId,
                        likeList: post.likes,
                      ),
                    );
                  },
                ),
                // ),
                SizedBox(
                  width: 5.w,
                ),
                IconButton(
                  icon: const Icon(Icons.comment),
                  iconSize: 30,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => CommentScreen(
                          user: user,
                          postId: post.postId,
                        ),
                      ),
                    );
                    BlocProvider.of<HomeBloc>(context).add(
                      HomeEvent.commentsEvent(postId: post.postId),
                    );
                  },
                  color: Colors.black,
                ),
                SizedBox(
                  width: 5.w,
                ),
                IconButton(
                  icon: const Icon(Icons.share),
                  iconSize: 30,
                  onPressed: () {},
                  color: Colors.black,
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: IconButton(
                      icon: const Icon(Icons.save_alt_rounded),
                      iconSize: 35,
                      onPressed: () {},
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.w,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              '${post.likes.isEmpty ? 0 : post.likes.length} likes',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: post.username,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 15),
                ),
                WidgetSpan(
                  child: SizedBox(
                    width: 5.w,
                  ),
                ),
                TextSpan(
                  style: const TextStyle(
                      fontWeight: FontWeight.normal, color: Colors.black),
                  text: post.description,
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
