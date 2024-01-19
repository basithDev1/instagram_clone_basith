import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:instagram_clone/Application/Profile/profile_bloc.dart';
import 'package:instagram_clone/Presentation/Widgets/post_screen_appbar.dart';

class SavedPostScreen extends StatelessWidget {
  const SavedPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 50),
        child: PostScreenAppBar(
          widget: SvgPicture.asset(
            'assets/ic_instagram.svg',
            height: 30,
            width: 80,
          ),
        ),
      ),
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.isError) {
            return const Center(
              child: Text('Oops!Something went wrong'),
            );
          } else if (state.savedPostList.isEmpty) {
            return const Center(
              child: Text('No Saved Post'),
            );
          }
          return Column(
            children: [
              Expanded(
                child: GridView.builder(
                    itemCount: state.savedPostList.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 5.w,
                      mainAxisSpacing: 5.w,
                    ),
                    itemBuilder: (context, index) {
                      final savedPost = state.savedPostList[index];
                      return Image.network(
                        savedPost.postUrl,
                        fit: BoxFit.fill,
                      );
                    }),
              )
            ],
          );
        },
      ),
    );
  }
}
