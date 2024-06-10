import 'package:atrails/Pages/StartPage/home_page.dart';
import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override 
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text("This is the start page!"),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                }, 
                child: const Text("Go back to dev page")
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage())
                  );
                },
                child: const Text("Test out Home Page"),
              )
            ],
          ),
        )
    );
  }
}