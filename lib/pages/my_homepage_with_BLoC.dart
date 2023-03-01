// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:flutter0bloc/blocs/internet_blocs/internet_bloc.dart';
// import 'package:flutter0bloc/blocs/internet_blocs/internet_state.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class MyHomePageWithBLoC extends StatelessWidget {
//   const MyHomePageWithBLoC({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Interent Connectivity Checker")),
//       body: Center(
//         child: BlocConsumer<InterentBloc, InterentState>(
//           listener: (context, state) {
//             if (state is InternetGainedState) {
//               ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                 content: Text("Internet is Now Connected"),
//                 backgroundColor: Colors.green,
//               ));
//             } else if (state is InternetLostState) {
//               ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                 content: Text("Internet disconnected"),
//                 backgroundColor: Colors.red,
//               ));
//             }
//           },
//           builder: (context, state) {
//             if (state is InternetLostState) {
//               return Text("Not Connected");
//             } else if (state is InternetGainedState) {
//               return Text("Connected!");
//             } else {
//               return Text("Loading...");
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
