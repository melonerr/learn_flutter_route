// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';

// Import Go Router Package
import 'package:go_router/go_router.dart';

// Import the PageName
import 'package:learnflutter_go_route/presentation/routes/pages_name.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('About Page'),
          backgroundColor: Colors.grey.shade400,
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    GoRouter.of(context).go(PageName.homeRoute);
                  },
                  child: const Text('Back to the home page')),
            ],
          ),
        ),
      ),
    );
  }
}
