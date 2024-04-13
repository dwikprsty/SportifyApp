import 'package:flutter/material.dart';
import 'package:sportify_app/utils/constants.dart';
import 'package:sportify_app/utils/helper.dart';
import 'package:sportify_app/widgets/button.dart';
import 'package:sportify_app/widgets/form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TextEditingController usernameController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();
  bool rememberMe = false;
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/login_page.png"),
                fit: BoxFit.cover),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 280),
              const Text(
                "Welcome Back!",
                style: TextStyle(
                    fontSize: 33,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const Text(
                "Please login into your account",
                style: TextStyle(color: Colors.white),
              ),
              Card(
                color: Constants.scaffoldBackgroundColor,
                elevation: 4,
                margin: const EdgeInsets.fromLTRB(25, 40, 25, 40),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const InputWidget(
                        hintText: 'Input your username',
                        topLabel: 'Username',
                        prefixIcon: Icons.person,
                      ),
                      const SizedBox(height: 20),
                      InputWidget(
                        hintText: 'Input your password',
                        topLabel: 'Password',
                        obscureText: _isObscure,
                        prefixIcon: Icons.lock,
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                          icon: Icon(
                            _isObscure
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                rememberMe = !rememberMe;
                              });
                            },
                            child: Icon(
                              rememberMe
                                  ? Icons.check_box_rounded
                                  : Icons.check_box_outline_blank_rounded,
                              color: Constants.secondaryColor,
                            ),
                          ),
                          const Text("Remember me"),
                          const Spacer(),
                          const Text(
                            "Forgot password",
                            style: TextStyle(color: Constants.secondaryColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20), // Add spacing
              AppButton(
                type: ButtonType.PLAIN,
                onPressed: () {
                  nextScreen(context, "/home");
                },
                text: 'Log In',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(color: Constants.activeMenu),
                  ),
                  TextButton(
                      onPressed: () {
                        nextScreen(context, '/register');
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Constants.activeMenu,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
