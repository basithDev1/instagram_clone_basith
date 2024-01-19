part of 'post_bloc.dart';

@freezed
class PostEvent with _$PostEvent {
  const factory PostEvent.firstEvent() = _FirstEvent;

  const factory PostEvent.selectedAlbum(AssetPathEntity selectedAlbum) =
      _SelectedAlbum;
  const factory PostEvent.assetToDisplay(AssetEntity displayAsset) =
      _AssetToDisplay;

  const factory PostEvent.toggleMultipleEvent() = _ToggleMultipleEvent;

  const factory PostEvent.selectingListofAsset(AssetEntity asset) =
      _SelectingListofAsset;

  const factory PostEvent.removingAssetFromSelectedList() =
      _RemovingAssetFromSelectedList;
}
