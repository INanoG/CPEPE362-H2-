import 'package:booked_webapp_v1/auth_service.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late String email, password;

  final formKey = GlobalKey<FormState>();

  checkFields() {
    final form = formKey.currentState;
    if (form!.validate()) {
      return true;
    } else {
      return false;
    }
  }

  String? validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    // ignore: unnecessary_new
    RegExp regex = new RegExp(pattern.toString());
    if (!regex.hasMatch(value)) {
      return 'Enter Valid Email';
    } else {
      return null;
    }
  }

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
                        decoration: const InputDecoration(
                          labelText: 'Email Address',
                          suffixIcon: Icon(Icons.mail, size: 17),
                        ),
                        validator: (value) => value!.isEmpty
                            ? 'Email is required'
                            : validateEmail(
                                value.toString(),
                              ),
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      child: TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          suffixIcon: Icon(Icons.enhanced_encryption, size: 17),
                        ),
                        validator: (value) =>
                            value!.isEmpty ? 'Password is required' : null,
                        onChanged: (value) {
                          password = value;
                        },
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
                        if (checkFields()) {
                          AuthService().signIn(email, password);
                        }
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
        ),
      ),
    );
  }
}
