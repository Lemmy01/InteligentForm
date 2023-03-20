import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inteligent_forms/features/authentication/presentation/bloc/authentication_bloc/authentication_bloc.dart';
import 'package:inteligent_forms/features/submissions/presentation/pages/view_submissions_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              context.read<AuthenticationBloc>().add(
                    const LogoutEvent(),
                  );
            },
          )
        ],
      ),
      body: const ViewSubmissionsPage(
        formTitle: 'Form1',
      ),
    );
  }
}
