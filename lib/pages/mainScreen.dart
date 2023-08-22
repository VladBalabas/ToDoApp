import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBFAF5) ,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Список справ'),
      ),
      body: Column(
        children: [
          Text('Main Screen'),
          ElevatedButton(onPressed: (){
            Navigator.pushReplacementNamed(context, '/todo');
          }, child: Text('Йти далі'))
        ],
      )
    );
  }
}