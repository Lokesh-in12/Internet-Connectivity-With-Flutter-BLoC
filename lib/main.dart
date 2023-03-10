import 'package:flutter/material.dart';
import 'package:flutter0bloc/blocs/internet_blocs/internet_bloc.dart';
import 'package:flutter0bloc/cubits/internet_cubit.dart';
import 'package:flutter0bloc/pages/homepage_with_cubit.dart';
import 'package:flutter0bloc/pages/my_homepage_with_BLoC.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InternetCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: MyHomePageWithBLoC(),
        home: const HomePageWithCubit(),
      ),
    );
  }
}
