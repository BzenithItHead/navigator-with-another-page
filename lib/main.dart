import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'second_page.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/presentation.jpg'),
              radius: 40,
            ),
            Text(
              'MD. HAZRAT ALI',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
                fontFamily:'AbrilFatface',
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Hi, I am a Mobile App Developer',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico'
              ),

            ),
            SizedBox(
              child: Divider(
                thickness: 6,
                color: Colors.black,
                height: 30,
              ),
            ),
            Card(
              margin: EdgeInsets.all(20),
              // margin: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
              //margin: EdgeInsets.only(top: ,right: ,left: ,bottom: ),
              child: ListTile(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>SecondPage())
                  );
                },
                title: Text('m3h.tex15121996@gmail.com'),
                leading: Icon(Icons.email,color: Colors.orange,),
              ),
            ),
            Card(
              margin: EdgeInsets.all(20),
              child: ListTile(
                onTap: (){},
                title: Text('+8801787318666'),
                leading: Icon(Icons.phone, color:Colors.orange,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

