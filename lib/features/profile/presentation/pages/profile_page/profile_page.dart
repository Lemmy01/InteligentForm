import 'package:flutter/material.dart';

import '../../../../authentication/data/datasources/remote/authentication_firestore_api.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              //TODO George Luta : schimba , nu e ok
              AuthenticationFirestoreApi().logout();
            },
          )
        ],
      ),
    );
  }
}
