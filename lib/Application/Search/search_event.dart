part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.firstEvent() = _FirstEvent;

  const factory SearchEvent.searchEvent({required String value}) = _SearchEvent;
}
