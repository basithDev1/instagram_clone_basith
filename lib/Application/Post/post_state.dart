part of 'post_bloc.dart';

@freezed
class PostState with _$PostState {
  const factory PostState({
    required bool isLoading,
    required bool isError,
    required List<AssetPathEntity> albumList,
    required List<AssetEntity> assetList,
    required bool isMultiple,
    required AssetPathEntity? selectedAlbum,
    required AssetEntity? assetToDisplay,
    required List<AssetEntity> selectedAssetList,
  }) = _PostState;

  factory PostState.initial() {
    return const PostState(
      selectedAssetList: [],
      assetToDisplay: null,
      selectedAlbum: null,
      isLoading: false,
      isError: false,
      albumList: [],
      assetList: [],
      isMultiple: false,
    );
  }
}
