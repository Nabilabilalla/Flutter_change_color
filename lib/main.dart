import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
 
class _MyAppState extends State {
  String _sentence;
  bool _changed;
 
  @override
  void initState() {
    _sentence = 'Salut Nabila';
    _changed = false;
    super.initState();
  }
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello App',
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                _sentence,
                style: TextStyle(
                  color: _changed ? Colors.red : Colors.black,
                  fontSize: 30.0,
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              color: _changed ? Colors.red: Colors.black,
              onPressed: () {
                setState(() {
                  _changed ? _changed = false : _changed = true;
                  _sentence == 'Salut '
                      ? _sentence = 'Bye Nabila '
                      : _sentence = 'Salut Nabila ';
                });
              },
              child: Text(
                'Changer',
                style: TextStyle(
                  color: _changed ? Colors.black : Colors.white, 
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}