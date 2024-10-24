import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          
          TextButton(
            style: ButtonStyle(
              //padding: MaterialStateProperty.all(EdgeInsets.all(50)),
              overlayColor: MaterialStateProperty.all(Colors.black),
              //elevation: MaterialStateProperty.all(20),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
              backgroundColor: MaterialStateProperty.all(Colors.blue),
            ),
            child: Text(
              'Press Me',
              style: TextStyle(fontSize: 20,color: Colors.white),
              ),
      
          onPressed: (){
          },
          ),
          SizedBox(height: 20,),
          Container(
            height: 70,
            width: 300,
            child: ElevatedButton(
              style: ButtonStyle(   
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
                overlayColor: MaterialStateProperty.all(Colors.black),
                backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
              ),
              onPressed: (){
              print('like');
            }, child: Text(
                'Press Me',
                style: TextStyle(fontSize: 20,color: Colors.white),
                ),),
          )
        ],),
      ),
    );
  }
}