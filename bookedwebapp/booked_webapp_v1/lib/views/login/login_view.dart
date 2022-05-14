import 'package:booked_webapp_v1/auth_service.dart';
import 'package:booked_webapp_v1/views/home/home_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginView extends StatefulWidget {
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final /*TextEditingController*/ emailController = TextEditingController();
  final /*TextEditingController*/ passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  String? validateEmail(String? value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(pattern);
    if (value!.isEmpty) {
      return 'Email is required';
    } else if (!regExp.hasMatch(value)) {
      return 'Invalid email';
    } else {
      return null;
    }
  }

  String? validatePassword(String? value) {
    if (value!.isEmpty) {
      return 'Password is required';
    } else if (value.length < 4) {
      return 'Password must be at least 4 characters';
    }
    return null;
  }

  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child: Form(
              key: _formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 480,
                    width: 395,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 235, 229, 224),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          'Welcome Back',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 68, 53, 40),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Let us get you started',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 68, 53, 40),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          width: 250,
                          child: TextFormField(
                            controller: emailController,
                            validator: validateEmail,
                            decoration: const InputDecoration(
                              labelText: 'Email Address',
                              suffixIcon: Icon(Icons.mail, size: 17),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 250,
                          child: TextFormField(
                            validator: validatePassword,
                            controller: passwordController,
                            obscureText: visible,
                            decoration: InputDecoration(
                                labelText: 'Password',
                                suffixIcon: const Icon(
                                    Icons.enhanced_encryption,
                                    size: 17),
                                suffix: InkWell(
                                  child: visible
                                      ? const Icon(
                                          Icons.visibility_off,
                                          size: 18,
                                          color: Colors.grey,
                                        )
                                      : const Icon(
                                          Icons.visibility,
                                          size: 18,
                                          color:
                                              Color.fromARGB(255, 68, 53, 40),
                                        ),
                                  onTap: () {
                                    setState(() {
                                      visible = !visible;
                                    });
                                  },
                                )),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 40, 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Text(
                                'Forgot Password',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 139, 109, 82),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            signIn(emailController.text.trim(),
                                passwordController.text.trim());
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: const Color.fromARGB(255, 122, 95, 71),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }

  void signIn(String email, String password) async {
    if (_formkey.currentState!.validate()) {
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: email, password: password);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeView(),
          ),
        );
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          print('No user found for that email.');
        } else if (e.code == 'wrong-password') {
          print('Wrong password provided for that user.');
        }
      }
    }
  }
}
