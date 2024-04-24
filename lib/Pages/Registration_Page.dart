import 'package:flutter/material.dart';

import '../components/my_Button.dart';
import '../components/textField.dart';
import 'login_page.dart';

class Registor extends StatelessWidget {
  final  TextEditingController _emailController = TextEditingController();
  final  TextEditingController _passwordController  = TextEditingController();
  final  TextEditingController _Conform_PV  = TextEditingController();


    Registor({super.key});

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
          Text("Let's Create an Account For You?",
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          //TextFields
          const SizedBox(height: 25,),
          MyTextField(hinttext: 'Email', obscureText: false, controller: _emailController,),
          const    SizedBox(height: 10,),
          MyTextField(hinttext: 'Password', obscureText: true, controller: _passwordController,),
          const SizedBox(height: 10,),
          MyTextField(hinttext: 'Conform Password', obscureText: true, controller: _Conform_PV,),
          const    SizedBox(height: 20,),

          //Login Button
          MyButton(text: ' Sign In', onTap: () {  },),


          const  SizedBox(height: 25,),
          //register User Page Link

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Already have an account?',style: TextStyle(color: Theme.of(context).colorScheme.primary),),
              const  SizedBox(width: 5,),
              InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                  },
                  child: Text('LOGIN NOW',style: TextStyle(color: Theme.of(context).colorScheme.primary),)),
            ],
          ),
        ],
      ),

    );
  }
}
