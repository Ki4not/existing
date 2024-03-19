part of 'recents_page_bloc.dart';

@immutable
sealed class RecentsPageState {
  final int tabIndex;

  const RecentsPageState({required this.tabIndex});
}

final class RecentsPageInitial extends RecentsPageState {
  const RecentsPageInitial({required super.tabIndex});
}
