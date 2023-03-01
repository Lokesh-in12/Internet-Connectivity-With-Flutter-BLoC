import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter0bloc/cubits/internet_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageWithCubit extends StatelessWidget {
  const HomePageWithCubit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Internet Connectivity With Cubit",
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: BlocConsumer<InternetCubit, InternetState>(
          listener: (context, state) {
            if (state == InternetState.Gained) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("Connected"),
                backgroundColor: Colors.green,
              ));
            } else {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("Disconnected"),
                backgroundColor: Colors.red,
              ));
            }
          },
          builder: (context, state) {
            if (state == InternetState.Gained) {
              return Text("Connected!");
            } else if (state == InternetState.Lost) {
              return Text("Not Connected");
            } else {
              return Text("Loading...");
            }
          },
        ),
      ),
    );
  }
}
