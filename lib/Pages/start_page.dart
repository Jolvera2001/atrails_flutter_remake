import 'package:atrails/Pages/StartPage/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StartPage extends ConsumerWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const LoginForm(),
            const Text("This is the start page!"),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Go back to dev page")),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
              },
            child: const Text("Test out Home Page"),
          )
        ],
      ),
    ));
  }
}

class LoginForm extends ConsumerWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return  const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: "Username"),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: "Password"),
          ),
        ),
      ],
    );
  }
}
