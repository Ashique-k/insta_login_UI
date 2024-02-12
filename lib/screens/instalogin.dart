import 'package:flutter/material.dart';
import 'package:instagram/screens/insta_home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: 700,
            color: Colors.white24,
            child: Card(
              margin: EdgeInsets.all(10.0),
              elevation: 7.0,
              shape: BeveledRectangleBorder(),
              surfaceTintColor: Colors.white70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0,bottom: 100,right: 10,top: 10),
                    child: Text("Instagram",style: TextStyle(fontFamily: "Billabong 400.ttf",fontSize: 35,color: Colors.black),),
                  ),
                  SizedBox(
                    height: 10,
                    width: 100,
                  ),
                  SizedBox(
                      height: 80,
                      width: 100,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 0,bottom: 20),
                        child: Image.asset("assets/images/insta logo.png"),
                      ),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      validator:  (value) {
                        if (value == null || value.isEmpty) {   // Validation Logic
                          return 'required';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 14,color: Colors.black),
                        hintText: "Phone number, username or email address",

                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2.0),
                            )
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      validator:  (value) {
                        if (value == null || value.isEmpty) {   // Validation Logic
                          return 'required';
                        }
                        return null;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(fontSize: 14,color: Colors.black),
                          hintText: "Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2.0),
                          )
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 40,
                    width: 300,
                    child: ElevatedButton(onPressed: () {
                      if(_formkey.currentState!.validate()){

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Home()),
                        );
                      }


                    }, child: Text("Log in",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))

                    ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(onPressed: () {


                  }, child: Text("Forgotten Your Password ?")),
                  SizedBox(
                    height: 100,
                    child: Card(
                      elevation: 2.0,
                      margin: EdgeInsets.all(15.0),
                      surfaceTintColor: Colors.white70,
                      shape: BeveledRectangleBorder(),
                      child: Container(

                        height: 50,
                        width: 300,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text("Don't have an account ?"),
                            ),
                            TextButton(onPressed: (){

                            }, child: Text("Sign up"))
                          ],
                        )
                      ),
                    ),
                  )
                ],


              ),

            ),

          ),
        ),



      ),

    );
  }
}
