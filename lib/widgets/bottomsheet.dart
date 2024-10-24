import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 
        const Text(
          'BottomSheet Widget',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: 
        ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(Theme.of(context).primaryColor),
        ),
        onPressed: (){
          showModalBottomSheet(
            backgroundColor: Theme.of(context).primaryColor,
            elevation: 0,
            isDismissible: false,
            enableDrag: true,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))),
            context: context,
            builder: (context){
              return const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                ListTile(
                  title: Text('Orange'),
                  subtitle: Text('Samad'),
                ),
                ListTile(
                  title: Text('Apple'),
                  subtitle: Text('Rehman'),
                ),
                ListTile(
                  title: Text('Banana'),
                  subtitle: Text('Umer'),
                ),
                ListTile(
                  title: Text('Grape'),
                  subtitle: Text('Rafay'),
                ),
                ListTile(
                  title: Text('Pineapple'),
                  subtitle: Text('Ali'),
                ),
              ],);
            });
        },
        child: 
        const Text(
          'Show Buttom sheet',
          style: TextStyle(color: Colors.white)
          ),
          
          ),
        ),
    );
  }
}
