import 'package:flutter/material.dart';
import 'package:timer/common_widgets/show_alert_dialog.dart';
import 'package:timer/services/auth_provider.dart';

class HomePage extends StatelessWidget {
  Future<void> _confirmSignOut(BuildContext context) async {
    final didRequestSignOut = await showAlertDialog(
      context,
      title: 'Sign out',
      content: 'Are you sure you want to sign out?',
      defaultActionText: 'SIGN OUT',
      cancelActionText: 'CANCEL',
    );
    if (didRequestSignOut) {
      _signOut(context);
    }
  }

  Future<void> _signOut(BuildContext context) async {
    try {
      final auth = AuthProvider.of(context);
      await auth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: <Widget>[
          TextButton(
            child: Text(
              'Logout',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            onPressed: () => _confirmSignOut(context),
          ),
        ],
      ),
    );
  }
}
