import 'package:flutter/material.dart';
import 'Signup.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const LoginPage()
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context){
    return Scaffold
      (
        appBar: AppBar(title: Text("Mobile App"),backgroundColor:Colors.blueAccent,),
        body:Center(
            child: Column(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                SizedBox(height: 10,),
                Text("Login",
                  style:TextStyle(fontSize:32) ,
                ),
                SizedBox(height:20,),
                SizedBox(
                    width:300,
                    child:
                    TextField(
                      decoration: InputDecoration(
                          labelText: "username",
                          hintText: "Enter your username",
                          hintStyle: TextStyle(fontSize: 16),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2
                              )
                          )
                      ),
                    )),
                SizedBox(height: 20,),
                SizedBox(
                    width: 300,
                    child:
                    TextField(
                      obscureText: _obscureText,
                      obscuringCharacter: '*',
                      decoration: InputDecoration(
                        labelText: "password",
                        hintText: "Enter password",
                        hintStyle: TextStyle(fontSize: 16),
                        border:OutlineInputBorder(
                            borderSide:BorderSide(
                              width:2,
                            )
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText ? Icons.visibility_off : Icons.visibility,
                          ),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        ),
                      ),
                    )),
                SizedBox(height: 30,),
                ElevatedButton(onPressed:(){}, child: Text("Login",
                  style:
                  TextStyle(fontSize: 24),
                )),
                SizedBox(height: 20,),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("No Account?",style:
                      TextStyle(fontSize: 16)),
                      TextButton(onPressed: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder:(context)=>const Signup())
                        );
                      },
                          child:
                          Text("Signup",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),))
                    ]
                )
              ],
            )
        )
    );
  }
}