import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management_ui/model/bloc1.dart';
import 'package:state_management_ui/model/bloc2.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 1')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(),
          BlocBuilder<Bloc1, String>(builder: (context, state) {
            return Text('$state');
          }),
          SizedBox(height: 16),
          BlocBuilder<Bloc2, String>(builder: (context, state) {
            return Text('$state');
          }),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/page2');
            },
            child: Text('Go down the widget tree'),
          ),
        ],
      ),
    );
  }
}
