import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:anki_samurai/components/app_bar_secondary.dart';

class GeneralSettingsScreen extends StatelessWidget {
  const GeneralSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBarSecondary(
          title: 'general_settings',
          onBackPressed: () => context.pop(),
        ),
        body: Column(
          children: [

          ]
        )
    );
  }
}