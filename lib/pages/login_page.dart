import 'package:day1/utils/theme.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, this.name1}) : super(key: key);

  final String? name1;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  //variables
  var name='';
  var changeButton = false;
  final  _formKey = GlobalKey<FormState>();


  //function to go to home page
  moveToHome(BuildContext context) async{
    if(_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, '/home');
      setState(() {
        changeButton = false;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyTheme.whiteColor,
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [

                //image in the column
                Image.asset(
                  'assets/images/login.png',
                  fit: BoxFit.cover,
                ),

                //space in the column
                SizedBox(
                  height: 5,
                ),

                //welcome text in the column
                Text(
                  "Welcome ${name}",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                //space in the column
                SizedBox(
                  height: 5,
                ),

                //form in the column
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 16,
                  ),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Username",
                          labelText: "Username",
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return 'Username cannot be empty';
                          }
                        },
                        onChanged: (value) {
                          setState(() {
                            name = value;
                          });
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return 'Password cannot be empty';
                          } else if(value.length<6){
                            return 'Password must be 6 characters long';
                          }
                        },
                      ),

                      //space in the column
                      SizedBox(
                        height: 40,
                      ),

                      //button in the column1
                      Material(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(
                          changeButton == true ? 50 : 8,
                        ),
                        child: InkWell(
                          onTap: (){
                            moveToHome(context);
                          },
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: changeButton == true ? 50 : 150,
                            height: 50,
                            alignment: Alignment.center,
                            child: changeButton == true
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "Login",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
