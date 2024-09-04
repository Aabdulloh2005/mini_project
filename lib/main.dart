import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_project/core/app.dart';
import 'package:mini_project/core/get_it.dart';
import 'package:mini_project/data/repositories/restuarant_repository.dart';
import 'package:mini_project/logic/bloc/restaurant/restaurant_bloc.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  setUp();
  runApp(const MainRunner());
}
