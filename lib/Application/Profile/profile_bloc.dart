import 'dart:async';
import 'dart:developer';
import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instagram_clone/Infrastructure/FirebaseModels.dart/Post_model.dart';
import 'package:instagram_clone/Infrastructure/FirebaseModels.dart/User_model.dart';

import 'package:instagram_clone/Resources/authentication_methods.dart';
import 'package:instagram_clone/Resources/firestore_methods.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final FireStoreMethods _fireStore;
  final AuthMethod _authMethod;
  final String currentUserUid;
  StreamSubscription? postSubscription;
  StreamSubscription? userSubscription;
  ProfileBloc(this._authMethod, this._fireStore, this.currentUserUid)
      : super(ProfileState.initial()) {
    on<_GetUserEvent>((event, emit) async {
      final user = await _authMethod.getUserDetails();
      emit(
        state.copyWith(user: user),
      );
    });
    on<_FirstEvent>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));

        try {
          postSubscription = _fireStore.getAllPost().listen(
            (postlist) {
              final currentUserPost = postlist.where((post) {
                return post.uid == currentUserUid;
              }).toList();
              emit(
                state.copyWith(
                  currentUserPost: currentUserPost,
                  isLoading: false,
                  isError: false,
                  postList: postlist,
                ),
              );
            },
          );

          userSubscription = _authMethod.getAllUser().listen((userList) {
            emit(state.copyWith(
              isLoading: false,
              allUser: userList,
            ));
          });

          await postSubscription!.asFuture();
          postSubscription!.cancel();

          await userSubscription!.asFuture();
          userSubscription!.cancel();
        } catch (e) {
          log(e.toString());
          emit(state.copyWith(
            isError: true,
            isLoading: false,
          ));
        }
      },
    );

    on<_RefreshCurrentUser>((event, emit) {
      emit(state.copyWith(isLoading: true));
      final List<Post> postList = state.postList;
      final currentUserPost = postList.where((post) {
        return post.uid == state.user.uid;
      }).toList();

      emit(state.copyWith(isLoading: false, currentUserPost: currentUserPost));
    });

    on<_SearchScreenPostTapped>(
      (event, emit) {
        emit(state.copyWith(isLoading: true));

        final List<User> allUser = state.allUser;

        final User filterdUser = allUser.firstWhere((user) {
          return user.uid == event.uid;
        });

        final List<Post> postList = state.postList;
        final List<Post> filteredPost = postList.where(
          (post) {
            return post.uid == filterdUser.uid;
          },
        ).toList();

        if (state.user.following.contains(event.uid)) {
          emit(
            state.copyWith(
              filteredUserPost: filteredPost,
              isLoading: false,
              filteredUser: filterdUser,
              isFollowing: true,
            ),
          );
        } else {
          emit(
            state.copyWith(
                filteredUserPost: filteredPost,
                isLoading: false,
                filteredUser: filterdUser,
                isFollowing: false),
          );
        }
      },
    );

    on<_FollowUser>(
      (event, emit) async {
        final res =
            await _fireStore.followUser(state.user.uid, event.friendUid);
        log(res);
        if (res == "removed") {
          emit(state.copyWith(isFollowing: false));
        } else {
          emit(state.copyWith(isFollowing: true));
        }
      },
    );

    on<_SignOutUser>((event, emit) async {
      String res = await _authMethod.signOutUser();

      if (res == 'signedOut') {
        emit(
          state.copyWith(
            isUserSignedOut: true,
          ),
        );
      } else {
        emit(
          state.copyWith(isUserSignedOut: false, isError: true),
        );
      }
    });
    on<_SavedPostDisplaying>((event, emit) {
      emit(state.copyWith(isLoading: true));
      final List savedPostId = state.user.savedPost;
      log("from blocccccc${savedPostId.toString()}");
      final List<Post> post = state.postList;

      final savedPost = post.where((post) {
        return savedPostId.any((savedpost) => post.postId == savedpost);
      }).toList();
      log("from blo${savedPost.toString()}");
      emit(
        state.copyWith(isLoading: false, savedPostList: savedPost),
      );
    });
  }
}
