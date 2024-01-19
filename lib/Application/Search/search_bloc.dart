import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instagram_clone/Infrastructure/FirebaseModels.dart/Post_model.dart';
import 'package:instagram_clone/Infrastructure/FirebaseModels.dart/User_model.dart';
import 'package:instagram_clone/Resources/firestore_methods.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final FireStoreMethods firestoreRepo;
  StreamSubscription? postSubscription;
  StreamSubscription? userSubscription;
  SearchBloc({required this.firestoreRepo}) : super(SearchState.initaial()) {
    on<_FirstEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      try {
        postSubscription = firestoreRepo.getAllPost().listen((postList) {
          if (postList.isNotEmpty) {
            emit(state.copyWith(
                postList: postList, isLoading: false, isError: false));
          }
        });
        userSubscription = firestoreRepo.getAllUser().listen(
          (userList) {
            emit(
              state.copyWith(
                userList: userList,
                isError: false,
                isLoading: false,
              ),
            );
          },
        );
        await postSubscription!.asFuture();
        postSubscription!.cancel();

        await userSubscription!.asFuture();
        userSubscription!.cancel();
      } catch (e) {
        emit(
          state.copyWith(isError: true, isLoading: false),
        );
      }
    });

    on<_SearchEvent>(
      (event, emit) {
        emit(state.copyWith(isLoading: true));
        final userList = state.userList;
        final List<User> filterdUser = userList.where(
          (username) {
            return username.username
                .toLowerCase()
                .contains(event.value.toLowerCase());
          },
        ).toList();
        emit(
          state.copyWith(
            textFieldValue: event.value,
            isLoading: false,
            filteredUser: filterdUser,
          ),
        );
        log("from bloc${filterdUser.toString()}");
      },
    );
  }
}
