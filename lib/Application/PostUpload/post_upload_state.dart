part of 'post_upload_bloc.dart';

@freezed
class PostUploadState with _$PostUploadState {
  const factory PostUploadState({
    required bool isLoading,
    required bool isError,
    required AssetEntity? takenAsset,
    bool? isPostUpdated,
    String? description,
  }) = _PostUploadState;

  factory PostUploadState.initial() {
    return const PostUploadState(
        isPostUpdated: false,
        isLoading: false,
        isError: false,
        takenAsset: null);
  }
}
