
import 'package:flutter/material.dart';
import 'package:time_tracker_flutter/services/auth.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key, @required this.auth,}) : super(key: key);
  final AuthBase auth;
  

  Future<void> _signOut() async {
    try {
      await auth.signOut();
      
    } on Exception catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 15.0),
      onPrimary: Colors.white,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          TextButton(
            child: const Text('Logout'),
            onPressed: _signOut,
            style: style,
          ),
        ],
      ),
    );
  }
}
