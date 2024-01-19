import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:instagram_clone/Application/Profile/profile_bloc.dart';
import 'package:instagram_clone/Application/Search/search_bloc.dart';

import 'package:instagram_clone/Presentation/Widgets/search_field.dart';
import 'package:instagram_clone/Presentation/friends_profile_screen.dart';
import 'package:instagram_clone/Presentation/profile_screen.dart';
import 'package:instagram_clone/Presentation/search_user_screen.dart';

//in this screen there will be a dummy textfield and we will show all post of the users in this screen

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // the Search field here is just dummy when clicking on that it will navigate to screen
          // where the user can search other user it is sam elike instagram check instagram for more refernce
          title: SearchField(
            callback: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SearchUserScreen(),
                ),
              );
            },
          ),
        ),
        resizeToAvoidBottomInset: false,
        body: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.isError) {
              return const Center(
                child: Text('Oops!Something Went wrong'),
              );
            } else if (state.postList.isEmpty == true) {
              return const Center(
                child: Text('No Post Avalable'),
              );
            }
            return Column(
              children: [
                Expanded(
                    child: GridView.custom(
                  gridDelegate: SliverQuiltedGridDelegate(
                    crossAxisCount: 3,
                    mainAxisSpacing: 1,
                    crossAxisSpacing: 1,
                    repeatPattern: QuiltedGridRepeatPattern.inverted,
                    pattern: [
                      const QuiltedGridTile(2, 2),
                      const QuiltedGridTile(1, 1),
                      const QuiltedGridTile(1, 1),
                    ],
                  ),
                  childrenDelegate: SliverChildBuilderDelegate(
                    childCount: state.postList.length,
                    (context, index) => GestureDetector(
                      onTap: () {
                        if (state.postList[index].uid !=
                            FirebaseAuth.instance.currentUser!.uid) {
                          BlocProvider.of<ProfileBloc>(context).add(
                            ProfileEvent.searchScreenPostTapped(
                                uid: state.postList[index].uid),
                          );

                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  const FriendsProfileScreen(),
                            ),
                          );
                        } else {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const ProfileScreen(),
                            ),
                          );
                        }
                      },
                      child: Image.network(
                        state.postList[index].postUrl,
                      ),
                    ),
                  ),
                ))
              ],
            );
          },
        ),
      ),
    );
  }
}
