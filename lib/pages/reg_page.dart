import 'package:flutter/material.dart';
import 'package:registration_page/pages/theme_helper.dart';



class RegPage extends StatefulWidget {

  @override
  State<RegPage> createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {
  Key _formKey = GlobalKey<FormState>();
  double _headerHeight = 250;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: _headerHeight,
              child: HeaderWidget(_headerHeight, true, Icons.login_rounded), //let's create a common header widget
            ),
            SafeArea(
              child: Container( // This will be the login form
                  child: Column(
                    children: [
                      Text(
                        'Register here',
                        style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20.0),
                      Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              SizedBox(height: 30,),
                              Container(
                                child: TextFormField(
                                  decoration: ThemeHelper().textInputDecoration('First Name', 'Enter your first name'),
                                ),

                              ),
                              SizedBox(height: 30,),
                              Container(
                                child: TextFormField(
                                  decoration: ThemeHelper().textInputDecoration('Last Name', 'Enter your last name'),
                                ),
                              ),
                              SizedBox(height: 20.0),
                              Container(
                                  child: TextFormField(
                                    decoration: ThemeHelper().textInputDecoration("E-mail address", "Enter your email"),
                                  ),
                              ),
                              SizedBox(height: 20.0),

                              TextFormField(
                                    decoration: ThemeHelper().textInputDecoration(
                                        "Mobile Number",
                                        "Enter your mobile number"),
                              ),

                              SizedBox(height: 20.0),
                                TextField(
                                obscureText: true,
                                decoration: ThemeHelper().textInputDecoration('Password', 'Enter your password'),
                              ),

                              SizedBox(height: 20.0),
                              TextField(
                                obscureText: true,
                                decoration: ThemeHelper().textInputDecoration('Confirm Password', 'Confirm your password'),
                              ),
                              SizedBox(height: 20.0),
                              Container(
                                  child: ElevatedButton(
                                    style: ThemeHelper().buttonStyle(),
                                    onPressed: () {  },
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                                      child: Text(
                                        "Register".toUpperCase(),
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                              ),
                              Container(
                                child: Text('Already have an account?'),

                              ),
                              Container(
                                child: Text('Sign Up'), // Now let's style the forms. For that we will create a theme helper class
                              ),
                            ],
                          )
                      ),
                    ],
                  )
              ),
            ),
          ],
        ),
      ),
    );

  }

  HeaderWidget(double headerHeight, bool bool, IconData login_rounded) {}
  }



