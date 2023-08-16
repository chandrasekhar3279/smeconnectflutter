import 'package:flutter/material.dart';
import 'package:smeconnect/components/custom_button.dart';
import 'package:smeconnect/components/custom_input.dart';
import 'package:smeconnect/pages/feed/feed.dart';
import 'package:smeconnect/pages/sign-up/sign_up.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  login(String email, String password) {
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('SME\'S SIGN-IN'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 200,
              ),
              Form(
                  child: Column(
                children: [
                  CustomInput(
                      labelText: 'email',
                      controller: email,
                      hintText: 'Enter user name'),
                  const SizedBox(height: 10),
                  CustomInput(
                      labelText: 'password',
                      controller: password,
                      hintText: 'Enter password'),
                  const SizedBox(height: 30),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Container(
                      height: 50,
                      width: width,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Feed()));
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                          ),
                        ),
                        child: const Text(
                          'LogIn',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Don\'t you have an account? '),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: ((context) =>  SignUp(selectedValue:'Orange',)),
                            ),
                          );
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
