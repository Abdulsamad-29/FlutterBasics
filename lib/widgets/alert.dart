
import 'package:flutter/material.dart';

class AlertWidget extends StatefulWidget {
  const AlertWidget({Key? key}) : super(key: key);

  @override
  _AlertWidgetState createState() => _AlertWidgetState();
}

class _AlertWidgetState extends State<AlertWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        
        child: ElevatedButton(
          style: ButtonStyle(   
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
                overlayColor: MaterialStateProperty.all(Colors.black),
                backgroundColor: MaterialStateProperty.all(Theme.of(context).primaryColor),
              ),
          child: Text('Show Alert'),
          onPressed: (){
            _showMyDialog(context);
          },),),
    
    );
  }
}

Future<void> _showMyDialog(BuildContext context)async{
  return showDialog(context: context, builder: (BuildContext context){
    return AlertDialog(
      //backgroundColor: Colors.black,
      elevation: 10,
        // scrollable: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      title: Text('This is an Alert'),
      content: SingleChildScrollView(
        child: ListBody(children: [
          Text('This is a demo'),
          Text('This is Abdul Samad'),
        ],),
      ),
      actions: [
        TextButton(onPressed: (){}, child: Text('Approve')),
        TextButton(onPressed: ()
        {
         Navigator.pop(context);
        }, 
        child: Text('Cancel')),
      ],
    );
  }
  );
}