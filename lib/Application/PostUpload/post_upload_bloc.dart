import 'dart:developer';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instagram_clone/Resources/authentication_methods.dart';
import 'package:instagram_clone/Resources/firestore_methods.dart';
import 'package:instagram_clone/Resources/storage_methods.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:instagram_clone/Infrastructure/FirebaseModels.dart/User_model.dart'
    as model;

part 'post_upload_event.dart';
part 'post_upload_state.dart';
part 'post_upload_bloc.freezed.dart';

class PostUploadBloc extends Bloc<PostUploadEvent, PostUploadState> {
  PostUploadBloc() : super(PostUploadState.initial()) {
    on<_FirstEvent>(
      (event, emit) {
        emit(
          PostUploadState(
            isLoading: false,
            isError: false,
            takenAsset: event.takenAsset,
          ),
        );
      },
    );

    on<_DescriptionEvent>(
      (event, emit) {
        emit(
          state.copyWith(description: event.value),
        );
      },
    );

    on<_AddToFirebaseEvent>(
      (event, emit) async {
        emit(
          state.copyWith(isLoading: true),
        );
        try {
          final data = await event.asset.originBytes;
          final Uint8List uint8List = Uint8List.fromList(data!);
          final postUrl =
              await StorageMethods().storeUserImage("post", uint8List, true);
          final model.User userDetails = await AuthMethod().getUserDetails();

          final res = await FireStoreMethods().uploadPost(
            state.description!,
            postUrl,
            userDetails.uid,
            userDetails.photoUrl,
            userDetails.username,
            userDetails.email,
          );
          log(res);
          emit(
            state.copyWith(isPostUpdated: true, isLoading: false),
          );
        } catch (e) {
          final model.User userDetails = await AuthMethod().getUserDetails();
          print(
            userDetails.toString(),
          );

          print("error ${e.toString()}");
          emit(
            state.copyWith(isPostUpdated: false, isError: true),
          );
        }
      },
    );
  }
}
