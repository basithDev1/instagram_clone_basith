import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/Application/Profile/profile_bloc.dart';
import 'package:instagram_clone/Core/colors.dart';
import 'package:instagram_clone/Presentation/Widgets/post_screen_appbar.dart';
import 'package:instagram_clone/Presentation/profile_screen.dart';

class FriendsProfileScreen extends StatelessWidget {
  const FriendsProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {});
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 50),
        child: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            final user = state.filteredUser;
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.isError) {
              return const Center(
                child: Text("Oops ! Something went wrong"),
              );
            }
            return PostScreenAppBar(
              widget: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: user.username,
                      style: TextStyle(
                          color: mobileBackgroundColor,
                          fontSize: 25.w,
                          fontWeight: FontWeight.bold),
                    ),
                    WidgetSpan(
                      child: Icon(
                        Icons.arrow_drop_down_rounded,
                        size: 25.w,
                      ),
                    )
                  ],
                ),
              ),
              actions: [
                Container(
                  height: 25.w,
                  width: 25.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(7.w),
                    border: Border.all(
                      color: Colors.black, // Outline color
                      width: 2, // Outline width
                    ),
                  ),
                  child: const Icon(
                    Icons.add,
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Icon(
                    Icons.horizontal_split,
                    color: mobileBackgroundColor,
                    size: 30.w,
                  ),
                ),
              ],
            );
          },
        ),
      ),
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          final userFriend = state.filteredUser;
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.isError) {
            return const Center(
              child: Text("Oops ! Something went wrong"),
            );
          } else if (state.filteredUserPost.isEmpty) {
            return const Center(
              child: Text("No post available"),
            );
          }
          return ListView(
            children: [
              Padding(
                padding: EdgeInsets.all(15.w),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 40.w,
                          backgroundImage: NetworkImage(userFriend.photoUrl),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              PostFollowingFollowers(
                                count: state.filteredUserPost.length.toString(),
                                belowCount: 'Posts',
                              ),
                              PostFollowingFollowers(
                                count: userFriend.followers.length.toString(),
                                belowCount: 'Followers',
                              ),
                              PostFollowingFollowers(
                                count: userFriend.following.length.toString(),
                                belowCount: 'Following',
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Align(
                        alignment: Alignment.centerRight,
                        child: state.isFollowing
                            ? ProfileScreenButton(
                                function: () {
                                  BlocProvider.of<ProfileBloc>(context).add(
                                    ProfileEvent.followUser(
                                      friendUid: userFriend.uid,
                                    ),
                                  );
                                },
                                width: width,
                                text: 'Unfollow',
                                textcolor: Colors.white,
                                bgColor: const Color.fromARGB(255, 8, 110, 193))
                            : ProfileScreenButton(
                                function: () {
                                  BlocProvider.of<ProfileBloc>(context).add(
                                      ProfileEvent.followUser(
                                          friendUid: userFriend.uid));
                                },
                                width: width,
                                text: 'Follow',
                                textcolor: Colors.white,
                                bgColor:
                                    const Color.fromARGB(255, 8, 110, 193))),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        userFriend.username,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        userFriend.username,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 150.w,
                child: GridView.builder(
                  itemCount: state.filteredUserPost.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 2.w,
                    mainAxisSpacing: 2.w,
                    crossAxisCount: 3,
                  ),
                  itemBuilder: (context, index) {
                    final post = state.filteredUserPost[index];
                    return Image.network(post.postUrl);
                  },
                ),
              )
            ],
          );
        },
      ),
    ));
  }
}
