part of 'post_upload_bloc.dart';

@freezed
class PostUploadEvent with _$PostUploadEvent {
  const factory PostUploadEvent.firstEvent({required AssetEntity takenAsset}) =
      _FirstEvent;

  const factory PostUploadEvent.descriptionEvent({required String value}) =
      _DescriptionEvent;

  const factory PostUploadEvent.addToFirebaseEvent(
      {required AssetEntity asset}) = _AddToFirebaseEvent;
}
