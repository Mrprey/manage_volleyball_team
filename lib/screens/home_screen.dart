import 'package:flutter/material.dart';
import 'package:manage_volleyball_team/utils/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(I18n.t(context, 'title'))),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/teamScreen');
          },
          child: Text(I18n.t(context, 'edit_team')),
        ),
      ),
    );
  }
}
