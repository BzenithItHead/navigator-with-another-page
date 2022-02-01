import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(
              image:AssetImage('images/presentation.jpg'),
            height:200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pop(context);
        },
        child: Icon(Icons.home_sharp),
        backgroundColor: Colors.black,
      ),
    );
  }
}
