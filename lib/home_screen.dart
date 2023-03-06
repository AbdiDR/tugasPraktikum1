// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget{
  const homeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: [
              SizedBox(height: 150,),
              FlutterLogo(),
              SizedBox(height: 50,),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                ),
              ),
              SizedBox(height: 10,),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Password',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
                ),
              ),
              const SizedBox(height: 20,),
               ElevatedButton(onPressed: (){},
                  child: Text("Log In"),
                 style: ElevatedButton.styleFrom(
                   minimumSize: Size(double.infinity, 50),
                   shadowColor: Colors.black,
                   elevation: 5,
                 ),
              ),
              const SizedBox(height: 5,),
               TextButton(onPressed: (null), child: Text("Forgot Password?"))
            ],
          ),
        ),
      )
    );
  }
}

