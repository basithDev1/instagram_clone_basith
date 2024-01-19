import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:instagram_clone/Infrastructure/media_services.dart';

import 'package:photo_manager/photo_manager.dart';

part 'post_event.dart';
part 'post_state.dart';
part 'post_bloc.freezed.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  PostBloc() : super(PostState.initial()) {
    on<_FirstEvent>(
      (event, emit) async {
        try {
          List<AssetPathEntity> albumList =
              await MediaServices().loadAlbums(RequestType.common);
          if (albumList.isEmpty) {
            emit(
              state.copyWith(
                albumList: [],
              ),
            );
          }
          var assetList = await MediaServices().loadAssets(albumList[0]);
          emit(
            state.copyWith(isLoading: true),
          );

          emit(
            state.copyWith(
              selectedAssetList: [],
              assetToDisplay: assetList[0],
              selectedAlbum: albumList[0],
              isLoading: false,
              isError: false,
              albumList: albumList,
              assetList: assetList,
              isMultiple: false,
            ),
          );
        } catch (e) {
          log("eror ${e.toString()}");

          emit(
            state.copyWith(
              selectedAssetList: [],
              assetToDisplay: state.assetList[0],
              selectedAlbum: state.albumList[0],
              isLoading: false,
              isError: true,
              albumList: state.albumList,
              assetList: state.assetList,
              isMultiple: false,
            ),
          );
        }
      },
    );

    on<_SelectedAlbum>(
      (event, emit) async {
        List<AssetEntity> newAssetList =
            await MediaServices().loadAssets(event.selectedAlbum);

        if (newAssetList.isNotEmpty) {
          emit(
            PostState(
              selectedAssetList: [],
              assetToDisplay: state.assetList[0],
              selectedAlbum: event.selectedAlbum,
              isLoading: false,
              isError: false,
              albumList: state.albumList,
              assetList: newAssetList,
              isMultiple: false,
            ),
          );
        } else {
          PostState(
            selectedAssetList: [],
            assetToDisplay: state.assetList[0],
            selectedAlbum: event.selectedAlbum,
            isError: true,
            isLoading: false,
            albumList: state.albumList,
            assetList: state.assetList,
            isMultiple: false,
          );
        }
      },
    );

    on<_AssetToDisplay>(
      (event, emit) {
        emit(
          state.copyWith(assetToDisplay: event.displayAsset),
        );
      },
    );

    on<_ToggleMultipleEvent>(
      (event, emit) {
        emit(
          state.copyWith(isMultiple: !state.isMultiple),
        );
      },
    );

    on<_SelectingListofAsset>(
      (event, emit) {
        List<AssetEntity> updatedSelectedAssetList =
            List.from(state.selectedAssetList);
        if (state.selectedAssetList.contains(event.asset)) {
          updatedSelectedAssetList.remove(event.asset);
        } else {
          updatedSelectedAssetList.add(event.asset);
        }
        emit(
          state.copyWith(
            selectedAssetList: updatedSelectedAssetList,
          ),
        );
      },
    );

    on<_RemovingAssetFromSelectedList>((event, emit) {
      List<AssetEntity> removeItemFromSelectedList =
          List.from(state.selectedAssetList);

      removeItemFromSelectedList.clear();

      emit(
        state.copyWith(selectedAssetList: removeItemFromSelectedList),
      );
    });
  }
}
