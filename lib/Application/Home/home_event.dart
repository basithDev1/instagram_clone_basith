part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.firstEvent() = _FirstEvent;
  const factory HomeEvent.likeButtonPressedEvent(
      {required String postId,
      required List likeList}) = _LikebuttonPressedEvent;
  const factory HomeEvent.commentsEvent({required String postId}) =
      _CommentsEvent;
  const factory HomeEvent.deletePostEvent({required String postId}) =
      _DeletePostEvent;
  const factory HomeEvent.checkingPostWeatherSaved({required String postId}) =
      _CheckingPostWeatherSaved;

  const factory HomeEvent.savePost(
      {required String uid, required String postId}) = _SavePost;
}
