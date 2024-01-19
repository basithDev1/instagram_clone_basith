import 'dart:async';
import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instagram_clone/Infrastructure/FirebaseModels.dart/Post_model.dart';
import 'package:instagram_clone/Infrastructure/FirebaseModels.dart/User_model.dart';
import 'package:instagram_clone/Resources/authentication_methods.dart';
import 'package:instagram_clone/Resources/firestore_methods.dart';
part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final AuthMethod authRepo;
  final FireStoreMethods firestoreRepo;
  StreamSubscription? postSubscription;
  StreamSubscription? commentSubscription;

  HomeBloc({required this.authRepo, required this.firestoreRepo})
      : super(HomeState.initial()) {
    on<_FirstEvent>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        final user = await authRepo.getUserDetails();

        emit(state.copyWith(isLoading: true));

        try {
          postSubscription = firestoreRepo.getAllPost().listen(
            (post) {
              emit(
                state.copyWith(
                  post: post,
                  isLoading: false,
                  isError: false,
                  user: user,
                  uid: user.uid,
                ),
              );
            },
          );

          await postSubscription!.asFuture();
          postSubscription!.cancel();
        } catch (e) {
          log(e.toString());
          emit(
            state.copyWith(isError: true, isLoading: false, error: e),
          );
        }
      },
    );

    on<_LikebuttonPressedEvent>(
      ((event, emit) async {
        try {
          firestoreRepo.likePost(state.user!.uid, event.postId, event.likeList);
          emit(state.copyWith(
              uid: state.user!.uid, isError: false, isLoading: false));
        } catch (e) {
          emit(
            state.copyWith(isError: true),
          );
        }
      }),
    );
    on<_CommentsEvent>((event, emit) async {
      try {
        emit(
          state.copyWith(isLoading: true),
        );
        commentSubscription =
            firestoreRepo.getComments(postId: event.postId).listen((snapshot) {
          emit(
            state.copyWith(isLoading: false, commentSnapshot: snapshot),
          );
        });
        await commentSubscription!.asFuture();
        commentSubscription!.cancel();
      } catch (e) {
        emit(state.copyWith(isError: true));
        log(
          e.toString(),
        );
      }
    });
    on<_DeletePostEvent>(
      (event, emit) {
        firestoreRepo.deletePost(
          postId: event.postId,
        );
      },
    );
    on<_CheckingPostWeatherSaved>((event, emit) {
      if (state.user!.savedPost.contains(event.postId)) {
        emit(state.copyWith(isPostSaved: true));
      } else {
        emit(state.copyWith(isPostSaved: false));
      }
    });
    on<_SavePost>((event, emit) async {
      String res = await firestoreRepo.savePost(event.postId, event.uid);
      log(res);
      if (res == "postSaved") {
        emit(state.copyWith(isPostSaved: true));
      } else {
        emit(state.copyWith(isPostSaved: false));
      }
    });
  }
}
