import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management_ui/model/bloc1.dart';
import 'package:state_management_ui/model/bloc2.dart';
import 'package:state_management_ui/view/page1.dart';
import 'package:state_management_ui/view/page2.dart';
import 'package:state_management_ui/view/page3.dart';

void main() => runApp(StateManagementDemo());

class StateManagementDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<Bloc1>(create: (context) => Bloc1()),
        BlocProvider<Bloc2>(create: (context) => Bloc2()),
      ],
      child: MaterialApp(
        routes: {
          '/page1': (context) => Page1(),
          '/page2': (context) => Page2(),
          '/page3': (context) => Page3(),
        },
        initialRoute: '/page1',
      ),
    );
  }
}
