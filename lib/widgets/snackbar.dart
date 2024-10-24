import 'package:flutter/material.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snackbar'),
        backgroundColor: Colors.red,
        elevation: 0, // shadow
        ),
      body: Container(
        child: Center(child: ElevatedButton(onPressed: (){
          final snackbar = SnackBar(
            action: SnackBarAction(label: 'Undo',textColor: Colors.blue,
            onPressed: (){},
            ),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            behavior: SnackBarBehavior.floating,
            //padding: EdgeInsets.all(60),
            duration: const Duration(milliseconds: 3000),
            //backgroundColor: Colors.red,
            content: Text('This is an error'));
          ScaffoldMessenger.of(context).showSnackBar(snackbar);
        }, child: Text('Show Snackbar'),),),
      ),
    );
  }
}