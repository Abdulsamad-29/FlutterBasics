import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  State<ListGrid> createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  List<String> fruits =['Orange','Apple','Mango','Banana'];
  Map fruits_person = {
    'fruits':['Orange','Apple','Mango','Banana'],
    'names':['Karan','Samad','Umar','Rafay']
  }; //defining map for subtitles
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List And Grid'),
        backgroundColor: Colors.red,
        elevation: 0, // shadow
        ),
        body: Container(
          // child: ListView.builder(
          //   itemCount: fruits.length,
          //   itemBuilder: (context,index){
          //     return Card(child: ListTile(
          //       onTap: (){
          //         print((fruits_person['fruits'][index]));
          //       },
          //       leading: Icon(Icons.person),
          //       title: Text(fruits_person['fruits'][index]),
          //       subtitle: Text(fruits_person['names'][index]),
          //     ),
          //     );
          //   },
          
          // ),
          child: GridView.builder(
            itemCount: fruits.length,
            gridDelegate: 
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context,index){
            return Card(child: Center( child: Text(fruits[index]),),); 
          },
          )
          // GridView(
          //   gridDelegate: 
          //   SliverGridDelegateWithFixedCrossAxisCount
          //   (
          //   crossAxisCount: 2,//ek row mai kitne widget hon// in this case 2 card in each row  and no of rows are dynamic
          //   crossAxisSpacing: 20, mainAxisSpacing: 20,childAspectRatio: 2/3
          //   ),
          //   children:[
          //     Card(child:Center(child: Text('orange'))),
          //     Card(child:Center(child: Text('orange'))),
          //     Card(child:Center(child: Text('orange'))),
          //     Card(child:Center(child: Text('orange'))),
          //     Card(child:Center(child: Text('orange'))),
          //     Card(child:Center(child: Text('orange'))),
          //     Card(child:Center(child: Text('orange'))),
          //     Card(child:Center(child: Text('orange'))),
          //   ],
          //   ),
          ),
        );
  }
}

// const [
//               Card(
//                 child: ListTile(
//                   title: Text('Orange'),
//                   subtitle: Text('Samad'),
//                   ),
//               ),
//                Card(
//                 child: ListTile(
//                   title: Text('Orange'),
//                   subtitle: Text('Samad'),
//                   ),
//               ),
//                Card(
//                 child: ListTile(
//                   title: Text('Orange'),
//                   subtitle: Text('Samad'),
//                   ),
//               ),
//                Card(
//                 child: ListTile(
//                   title: Text('Orange'),
//                   subtitle: Text('Samad'),
//                   ),
//               ),
//                Card(
//                 child: ListTile(
//                   title: Text('Orange'),
//                   subtitle: Text('Samad'),
//                   ),
//               ),
//                Card(
//                 child: ListTile(
//                   title: Text('Orange'),
//                   subtitle: Text('Samad'),
//                   ),
//               ),
//                Card(
//                 child: ListTile(
//                   title: Text('Orange'),
//                   subtitle: Text('Samad'),
//                   ),
//               ),
//                Card(
//                 child: ListTile(
//                   title: Text('Orange'),
//                   subtitle: Text('Samad'),
//                   ),
//               ),
//                Card(
//                 child: ListTile(
//                   title: Text('Orange'),
//                   subtitle: Text('Samad'),
//                   ),
//               ),
//             ],