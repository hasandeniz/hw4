import 'package:flutter/material.dart';
import 'package:hw4/pageA.dart';
import 'package:hw4/pageX.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HW 4',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page", style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 200,height: 50,
              child: TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => const pageA()
                  ));
                },
                style: TextButton.styleFrom(backgroundColor: Colors.deepPurple),
                child: const Text("Go to page A", style: TextStyle(color: Colors.white, fontSize: 18),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: SizedBox(width: 200,height: 50,
                child: TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => const pageX()
                    ));
                  },
                  style: TextButton.styleFrom(backgroundColor: Colors.deepPurple),
                  child: const Text("Go to page X", style: TextStyle(color: Colors.white, fontSize: 18),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}