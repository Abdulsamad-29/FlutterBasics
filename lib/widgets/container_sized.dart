import "package:flutter/material.dart";

class Container_Sized extends StatelessWidget {
  const Container_Sized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Container and Sized box '),
        ),
        body:  Center(
          child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.blue,
                //shape: BoxShape.circle,
                //borderRadius: BorderRadius.circular(20)
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                  blurRadius: 20,
                  spreadRadius: 5,
                  color: Colors.blue,
                )]
                ),
              child: Center(child: Text('Hello',style: TextStyle(fontSize: 20),)),
              ),
        ),
    ); // starting of an app, roof of application
  }
}