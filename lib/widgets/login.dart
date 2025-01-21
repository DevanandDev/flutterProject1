// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:newapp/widgets/home.dart';

class ScreenLogin extends StatelessWidget {
   ScreenLogin({super.key});

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column( 
               
              crossAxisAlignment: CrossAxisAlignment.end,  
              mainAxisAlignment: MainAxisAlignment.center, 
              children: [
                TextFormField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Username' 
                  ),
                ),
                 
               const SizedBox(height: 20,),

                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password'
                  ),
                ),

                const SizedBox(height: 20,),

                ElevatedButton.icon(onPressed: (){
                  checkLogin(context);
                },
                icon: const Icon(Icons.check),
                 label: const Text('LogIn'))
              ],
            ),
          ),
        ),
      );
  }

  void checkLogin(BuildContext ctx){
    String username = _usernameController.text;
    String password = _passwordController.text;

  
    if(username == "devanand" && password == "1234")
    {
       Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (ctx1) =>ScreenHome()));
    }
    else {
      final _errorMessage = 'Username and Password doesnot match';

      // ScaffoldMessenger.of(ctx)
      //   .showSnackBar(SnackBar(
      //     behavior: SnackBarBehavior.floating,
      //     backgroundColor: Colors.red.shade300,
      //     margin: EdgeInsets.all(10),
      //     content: Text(_errorMessage)
      //     ),
      //     );

        showDialog(context: ctx,
         builder: (ctx1){
          return AlertDialog(
            backgroundColor: const Color.fromARGB(255, 203, 98, 91),
            title: Text('Error'),
            content: Text(_errorMessage),
            actions: [
              TextButton(onPressed: (){
                Navigator.of(ctx1).pop();
              },
               child: Text('close'))
            ],
          );
         });
                                 
    }
  }
}