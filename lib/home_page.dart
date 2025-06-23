import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testriverpod/states_manager/riverpod.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Riverpod'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [   
          Consumer(builder: 
            ((context, ref, child){
              final name = ref.watch(nameProvider);
              return Text(name);
            }),
          ),
          ],
        ),
      ),
    );
  }
}
