part of 'app_cubit.dart';

@immutable
abstract class AppState {}

class AppInitial extends AppState {}

class OutdoorSelectionState extends AppState {}

class TimeSelectionState extends AppState {}

class PriceRangeSelectionState extends AppState {}
