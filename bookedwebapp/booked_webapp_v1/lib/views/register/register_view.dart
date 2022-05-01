import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.white,
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
                  color: const Color.fromARGB(255, 224, 253, 203),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Join the Community',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 36, 56, 21),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Let us get you signed up',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 36, 56, 21),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const SizedBox(
                      width: 250,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Name',
                          suffixIcon: Icon(Icons.person, size: 17),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Email Address',
                          suffixIcon: Icon(Icons.mail, size: 17),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 250,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          suffixIcon: Icon(Icons.enhanced_encryption, size: 17),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 250,
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Confirm Password',
                          suffixIcon:
                              Icon(Icons.enhanced_encryption_sharp, size: 17),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    GestureDetector(
                      child: Container(
                        alignment: Alignment.center,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: const Color.fromARGB(255, 55, 105, 78),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            'Sign Up',
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
