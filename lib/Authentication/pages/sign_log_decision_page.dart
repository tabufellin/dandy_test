import 'package:flutter/material.dart';

class SignLogDecisionPage extends StatelessWidget {
  const SignLogDecisionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              'First Page',
              style: TextStyle(fontSize: 50),
            ),
            RaisedButton(
              child: const Text('Go to second'),
              onPressed: () {
                // Pushing a named route
                Navigator.of(context).pushNamed(
                  '/second',
                  arguments: 'Hello there from the first page!',
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  // This is a String for the sake of an example.
  // You can use any type you want.
  final String data;

  const SecondPage({Key? key, this.data = 'just a data default value'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              'Second Page',
              style: TextStyle(fontSize: 50),
            ),
            Text(
              data,
              style: const TextStyle(fontSize: 20),
            ),
            RaisedButton(
              child: const Text('Go to first'),
              onPressed: () {
                // Pushing a named route
                Navigator.of(context).pushNamed('/');
              },
            )
          ],
        ),
      ),
    );
  }
}
