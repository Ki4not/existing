import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'recents_page_event.dart';
part 'recents_page_state.dart';

class RecentsPageBloc extends Bloc<RecentsPageEvent, RecentsPageState> {
  RecentsPageBloc() : super(RecentsPageInitial(tabIndex: 0)) {
    on<RecentsPageEvent>((event, emit) {
      if (event is TabChange) {
        emit(RecentsPageInitial(tabIndex: event.tabIndex));
      }
    });
  }
}
