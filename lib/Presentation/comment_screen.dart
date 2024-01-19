import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/Application/Home/home_bloc.dart';

import 'package:instagram_clone/Infrastructure/FirebaseModels.dart/User_model.dart';
import 'package:instagram_clone/Presentation/Widgets/comment_card.dart';
import 'package:instagram_clone/Presentation/Widgets/post_screen_appbar.dart';
import 'package:instagram_clone/Resources/firestore_methods.dart';

class CommentScreen extends StatefulWidget {
  final String postId;
  final User user;

  const CommentScreen({super.key, required this.user, required this.postId});

  @override
  State<CommentScreen> createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  final TextEditingController _commentController = TextEditingController();

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {},
    );
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 50.w),
        child: const PostScreenAppBar(
          text: "Comments",
        ),
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const CircularProgressIndicator();
          } else if (state.isError) {
            return const Center(
              child: Text('Something went wrong'),
            );
          }
          return Column(
            children: [
              Expanded(
                child: state.commentSnapshot.isEmpty
                    ? const Center(
                        child: Text('No Comments available'),
                      )
                    : ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return CommentCard(
                            snapshot: state.commentSnapshot[index],
                          );
                        },
                        separatorBuilder: (context, index) => Divider(
                          color: Colors.grey,
                          thickness: 1.w,
                          height: 10.w,
                        ),
                        itemCount: state.commentSnapshot.length,
                      ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.w, horizontal: 10.w),
                height: kToolbarHeight,
                // color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        widget.user.photoUrl,
                      ),
                      radius: 18.w,
                    ),
                    Expanded(
                      child: TextField(
                        enableInteractiveSelection: true,
                        keyboardType: TextInputType.text,
                        controller: _commentController,
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 10.w),
                          hintText: 'Comment as ${widget.user.username.trim()}',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (_commentController.text.isNotEmpty) {
                          FireStoreMethods().postComments(
                            comment: _commentController.text,
                            postId: widget.postId,
                            user: widget.user,
                          );
                        }
                      },
                      child: Icon(
                        _commentController.text.isEmpty
                            ? Icons.gif_box_outlined
                            : Icons.arrow_upward_outlined,
                        size: 30.w,
                        color: _commentController.text.isEmpty
                            ? Colors.black
                            : Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
