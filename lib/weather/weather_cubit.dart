import 'package:bloc/bloc.dart';

import 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(WeatherState().init());



}
