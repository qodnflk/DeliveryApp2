import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/pages/login.dart';
import 'package:fooddeliveryapp/widget/widget_support.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFff5c30),
                    Color(0xFFe74b1a),
                  ],
                ),
              ),
            ),
            Container(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: const Text(""),
            ),
            Container(
              margin: const EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0),
              child: Column(
                children: [
                  Center(
                    child: Image.asset(
                      "images/logo.png",
                      width: MediaQuery.of(context).size.width / 2,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 50.0),
                  Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 2,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 30.0),
                          Text(
                            'Sign up',
                            style: AppWidget.semiBoldTextFeildStyle(),
                          ),
                          const SizedBox(height: 30),
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Name",
                              hintStyle: AppWidget.semiBoldTextFeildStyle(),
                              prefixIcon: const Icon(Icons.person_outline),
                            ), // prefixIcon 왼쪽 suffixIcon 오른쪽
                          ),
                          const SizedBox(height: 30.0),
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Email",
                              hintStyle: AppWidget.semiBoldTextFeildStyle(),
                              prefixIcon: const Icon(Icons.mail_outline),
                            ), //
                          ),
                          const SizedBox(height: 30.0),
                          TextField(
                            obscureText: true, // 평소알던 ****로 변경해줌
                            decoration: InputDecoration(
                              hintText: "Password",
                              hintStyle: AppWidget.semiBoldTextFeildStyle(),
                              prefixIcon: const Icon(Icons.password_outlined),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            alignment: Alignment.topRight,
                            child: Text(
                              'Forget Password?',
                              style: AppWidget.semiBoldTextFeildStyle(),
                            ),
                          ),
                          const SizedBox(height: 40.0),
                          Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.circular(20.0),
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              width: 200,
                              decoration: BoxDecoration(
                                  color: const Color(0Xffff5722),
                                  borderRadius: BorderRadius.circular(20.0)),
                              child: const Center(
                                child: Text(
                                  'Sign up',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.white,
                                    fontFamily: 'Poppins1',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 30),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Login()));
                            },
                            child: Text(
                              "Already have an account? Login",
                              style: AppWidget.semiBoldTextFeildStyle(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
