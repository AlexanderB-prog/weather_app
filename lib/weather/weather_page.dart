import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'weather_cubit.dart';
import 'weather_state.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => WeatherCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<WeatherCubit>(context);

    return Container();
  }
}


