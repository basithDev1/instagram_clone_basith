import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:instagram_clone/Application/Profile/profile_bloc.dart';
import 'package:instagram_clone/Core/colors.dart';
import 'package:instagram_clone/Presentation/Widgets/post_screen_appbar.dart';
import 'package:instagram_clone/Presentation/login_screen.dart';
import 'package:instagram_clone/Presentation/saved_post_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 50),
        child: BlocConsumer<ProfileBloc, ProfileState>(
          listener: (context, state) {
            if (state.isUserSignedOut) {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
                (route) => false, // This will remove all routes from the stack
              );
            }
          },
          builder: (context, state) {
            if (state.isLoading) {
              const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.isError) {
              const Center(
                child: Text('Oops! something Went wrong'),
              );
            }
            final user = state.user;
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
                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return SizedBox(
                            height: 100.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 28, 133, 218),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  height: 40.w,
                                  width: 140.w,
                                  child: TextButton.icon(
                                    icon: const Icon(
                                      Icons.logout,
                                      color: Colors.white,
                                    ),
                                    label: Text(
                                      'Sign Out',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18.sp),
                                    ),
                                    onPressed: () {
                                      BlocProvider.of<ProfileBloc>(context).add(
                                          const ProfileEvent.signOutUser());
                                    },
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    BlocProvider.of<ProfileBloc>(context).add(
                                        const ProfileEvent
                                            .savedPostDisplaying());
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const SavedPostScreen(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 28, 133, 218),
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    height: 40.w,
                                    width: 140.w,
                                    child: Center(
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            const WidgetSpan(
                                              child: Icon(
                                                Icons.person_pin_circle_rounded,
                                                color: Colors.white,
                                              ),
                                            ),
                                            WidgetSpan(
                                                child: SizedBox(
                                              width: 5.w,
                                            )),
                                            TextSpan(
                                              text: 'Saved',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18.sp),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Icon(
                      Icons.horizontal_split_outlined,
                      color: mobileBackgroundColor,
                      size: 30.w,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          final user2 = state.user;

          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.isError) {
            return const Center(
              child: Text('Oops! something Went wrong'),
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
                          backgroundImage: NetworkImage(user2.photoUrl),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              PostFollowingFollowers(
                                count: state.currentUserPost.length.toString(),
                                belowCount: 'Posts',
                              ),
                              PostFollowingFollowers(
                                count: state.user.followers.length.toString(),
                                belowCount: 'Followers',
                              ),
                              PostFollowingFollowers(
                                count: state.user.following.length.toString(),
                                belowCount: 'Following',
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: ProfileScreenButton(
                          function: () {},
                          width: width,
                          text: 'Edit profile',
                          textcolor: Colors.black,
                          bgColor: Colors.grey.withOpacity(.3)),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        user2.username,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        user2.username,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 150.w,
                      child: GridView.builder(
                        itemCount: state.currentUserPost.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 2.w,
                          mainAxisSpacing: 2.w,
                          crossAxisCount: 3,
                        ),
                        itemBuilder: (context, index) {
                          final post = state.currentUserPost[index];
                          return Image.network(
                            post.postUrl,
                            fit: BoxFit.fill,
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          );
        },
      ),
    ));
  }
}

class ProfileScreenButton extends StatelessWidget {
  final String text;
  final Color textcolor;
  final Color bgColor;
  final VoidCallback function;

  const ProfileScreenButton({
    super.key,
    required this.width,
    required this.text,
    required this.textcolor,
    required this.bgColor,
    required this.function,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.w,
      width: width / 1.5,
      decoration: BoxDecoration(
          color: bgColor,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8.w)),
      child: TextButton(
        onPressed: function,
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: textcolor),
          ),
        ),
      ),
    );
  }
}

class PostFollowingFollowers extends StatelessWidget {
  final String count;
  final String belowCount;
  const PostFollowingFollowers({
    super.key,
    required this.count,
    required this.belowCount,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(belowCount),
      ],
    );
  }
}
