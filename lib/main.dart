import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_nav_bloc/app/app_bloc_observer.dart';
import 'package:flutter_nav_bloc/app/app_cubit.dart';
import 'package:flutter_nav_bloc/app/second/second_cubit.dart';
import 'package:flutter_nav_bloc/app_page.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => AppCubit()),
          BlocProvider(create: (context) => SecondCubit()),
        ],
        child: const AppPage(),
      ),
    );
  }
}
