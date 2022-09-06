import 'package:flutter/material.dart';
import 'package:saude_prime_familia/app/pages/home.dart';

import '../Signup/signup.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/images/logo.png', scale: 4.0),
              Container(
                height: 790,
                padding: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.black12,
                      offset: new Offset(1, 2.0),
                      blurRadius: 5,
                      spreadRadius: 1,
                    )
                  ],
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Center(
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                      fontSize: 60,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 30),
                                Text(
                                  'Sign in to continue',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MySignup(),
                                  ),
                                );
                              },
                              child: Text('Sign Up'),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: 'E-mail',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: 'Senha',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                        SizedBox(height: 30),
                        Container(
                          height: 40,
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            child: Text(
                              " Esqueceu a sua senha?",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(height: 30),
                        Container(
                          width: double.infinity,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(
                              Radius.circular(18),
                            ),
                          ),
                          child: TextButton(
                            child: Text(
                              "Entrar",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Home(),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
