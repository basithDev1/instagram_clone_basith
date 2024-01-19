import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/Application/Home/home_bloc.dart';
import 'package:instagram_clone/Core/utils.dart';

import 'package:instagram_clone/Presentation/Widgets/post_card.dart';
import 'package:instagram_clone/Presentation/Widgets/post_screen_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
      body: BlocBuilder<HomeBloc, HomeState>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          final post = state.post;
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.isError) {
            return snackBar(state.error.toString(), context);
          } else if (state.post.isEmpty) {
            return const Center(child: Text('No post availabale'));
          }
          return ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (context, index) => SizedBox(
              height: 25.w,
            ),
            itemBuilder: (context, index) {
              return PostCard(
                uid: state.uid ?? '',
                post: post[index],
                user: state.user!,
              );
            },
            itemCount: state.post.length,
          );
        },
      ),
    );
  }
}
