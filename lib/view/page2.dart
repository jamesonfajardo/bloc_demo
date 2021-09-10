import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management_ui/model/bloc1.dart';
import 'package:state_management_ui/model/bloc2.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page 2')),
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
          FractionallySizedBox(
            widthFactor: 0.9,
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                filled: true,
                hintText: 'Type something..',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(borderSide: BorderSide.none),
              ),
              onChanged: (newValue) {
                BlocProvider.of<Bloc1>(context).emit(newValue);
                BlocProvider.of<Bloc2>(context).emit(newValue);
              },
            ),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/page3');
            },
            child: Text('Go down the widget tree'),
          ),
        ],
      ),
    );
  }
}
