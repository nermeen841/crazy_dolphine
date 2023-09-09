import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  bool? outdoorSelection;
  changetoggle(bool selection) {
    outdoorSelection = selection;
    emit(OutdoorSelectionState());
  }

  /////////////////////////////////////////////////////
  int? timeSelection;
  intervaltimeSelection(int selection) {
    timeSelection = selection;
    emit(TimeSelectionState());
  }

  //////////////////////////////////////////////////
  bool? pricerange;
  priceRangeSelection(bool selection) {
    pricerange = selection;
    emit(PriceRangeSelectionState());
  }
}
