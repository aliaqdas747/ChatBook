import 'package:chat_app/Pages/Registration_Page.dart';
import 'package:chat_app/components/my_Button.dart';
import 'package:chat_app/components/textField.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  //Email And Password Controller,
 final  TextEditingController _emailController = TextEditingController();
 final  TextEditingController _passwordController  = TextEditingController();



    LoginPage({super.key});

    //Login Method
 void login(){

 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //2nd
      backgroundColor: Theme.of(context).colorScheme.background,
      //4th
      body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          //Logo
          Center(child: Icon(Icons.message_outlined,
            size: 60,
            color: Theme.of(context).colorScheme.primary,
          )),
             const SizedBox(height: 25,),

          //Welcome Back Message
          Text("Welcome back, you've been missed!",
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
          ),
          ),
          //TextFields
          const SizedBox(height: 25,),
     MyTextField(hinttext: 'Email', obscureText: false, controller: _emailController,),
          const    SizedBox(height: 10,),
           MyTextField(hinttext: 'Password', obscureText: true, controller: _passwordController,),
      const    SizedBox(height: 20,),
          //Login Button
           MyButton(text: 'Login', onTap: () { login(); },),


        const  SizedBox(height: 25,),
          //register User Page Link

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Not a member?',style: TextStyle(color: Theme.of(context).colorScheme.primary),),
            const  SizedBox(width: 5,),
             InkWell(
                 onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context)=> Registor()));
                 },
                 child: Text('Registor Now',style: TextStyle(color: Theme.of(context).colorScheme.primary),)),
            ],
          ),
        ],
      ),

    );
  }
}
