import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timer/app/sign_in/email_sign_in_form_stateful.dart';
import 'package:timer/services/auth.dart';

class EmailSignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthBase>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
        elevation: 2.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
              child: EmailSignInFormStateful(
            auth: auth,
          )),
        ),
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}
