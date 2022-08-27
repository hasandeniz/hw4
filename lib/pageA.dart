import 'package:flutter/material.dart';
import 'package:hw4/pageB.dart';


class pageA extends StatelessWidget {
  const pageA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: const Text("Page A", style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 200,height: 50,
              child: TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => const pageB()
                  ));
                },
                style: TextButton.styleFrom(backgroundColor: Colors.deepPurple),
                child: const Text("Go to page B", style: TextStyle(color: Colors.white, fontSize: 18),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}