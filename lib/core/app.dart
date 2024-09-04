import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_project/core/get_it.dart';
import 'package:mini_project/data/repositories/restuarant_repository.dart';
import 'package:mini_project/logic/bloc/restaurant/restaurant_bloc.dart';
import 'package:mini_project/ui/screens/main/main_screen.dart';

class MainRunner extends StatelessWidget {
  const MainRunner({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiRepositoryProvider(
        providers: [
          RepositoryProvider.value(value: getIt.get<RestuarantRepository>())
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider.value(value: getIt.get<RestaurantBloc>()),
          ],
          child: const MainScreen(),
        ),
      ),
    );
  }
}
