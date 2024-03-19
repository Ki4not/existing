part of 'recents_page_bloc.dart';

@immutable
sealed class RecentsPageEvent {}

class TabChange extends RecentsPageEvent {
  final int tabIndex;

  TabChange({required this.tabIndex});
}
