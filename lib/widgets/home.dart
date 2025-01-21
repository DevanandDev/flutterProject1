// import 'package:flutter/material.dart';
// import 'package:newapp/widgets/login.dart';

// class ScreenHome extends StatelessWidget {
//   const ScreenHome({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(
//           child: Text('HOME PAGE', 
//           style: TextStyle(
//             color: Colors.blueAccent,
//             fontWeight: FontWeight.w900),),
//           ),
//         actions: [
//           IconButton(onPressed: (){
//           Navigator.of(context).pushAndRemoveUntil(
//             MaterialPageRoute(builder: (ctx)=> ScreenLogin()),
//             (Route<dynamic> route)=>false);
//           }, icon: Icon(Icons.exit_to_app,
//           color: Colors.blueAccent,),)
//         ],
//       ),
//       body: SafeArea(child: Center(
//        child: Text('homepage'),),
//     ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:newapp/widgets/login.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
  final List<Map<String, String>> keralaFood = [
  {'title': 'Puttu', 'description': 'Steamed rice flour and grated coconut, served with banana or curry.'},
  {'title': 'Kerala Sadya', 'description': 'A traditional vegetarian feast served on a banana leaf with rice and multiple side dishes.'},
  {'title': 'Malabar Biryani', 'description': 'A flavorful rice dish cooked with spices, meat, and fried onions.'},
  {'title': 'Parotta', 'description': 'A layered flatbread, often enjoyed with beef curry or chicken curry.'},
  {'title': 'Fish Curry', 'description': 'A spicy and tangy curry made with fish, coconut, and tamarind.'},
  {'title': 'Payasam', 'description': 'A sweet dessert made with rice, jaggery, coconut milk, or milk.'},
];

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Kerala Foods',
            style: TextStyle(
              fontSize: 25, 
              color: Colors.green.shade700,
              fontWeight: FontWeight.w900,
            ), 
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (ctx) => ScreenLogin()),
                (Route<dynamic> route) => false,
              );
            },
            icon: Icon(
              Icons.exit_to_app,
              color: Colors.green.shade700,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: keralaFood.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.all(8),
              child: ListTile(
                leading: CircleAvatar(
                  child: Text(keralaFood[index]['title']![0]),
                ),
                title: Text(keralaFood[index]['title']!),
                subtitle: Text(keralaFood[index]['description']!),
                onTap: () {
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   SnackBar(
                  //     content: Text('Tapped on ${keralaFood[index]['title']}'),
                  //   ),
                  // );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
