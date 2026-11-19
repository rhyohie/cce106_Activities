import 'package:flutter/material.dart';

class StudentProfilePage extends StatelessWidget {
  const StudentProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 231, 228),
      appBar: AppBar(
        title: const Text('Student Profile'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 94, 218, 176),
        foregroundColor: Color.fromARGB(255, 73, 64, 64),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Profile avatar.
                const Center(
                  child: CircleAvatar(
                    radius: 55,
                    backgroundColor: Color.fromARGB(255, 94, 218, 176),
                    child: Text(
                      'JEM',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 73, 64, 64),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                // Student name and course.
                const Text(
                  'John Erold Miano',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 73, 64, 64),
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  'BS Computer Science',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),

                const SizedBox(height: 24),

                // Student details.
                const Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          Icons.badge,
                          color: Color.fromARGB(255, 94, 218, 176),
                        ),
                        title: Text('Student Number'),
                        subtitle: Text('542566'),
                      ),
                      Divider(height: 1),
                      ListTile(
                        leading: Icon(
                          Icons.school,
                          color: Color.fromARGB(255, 94, 218, 176),
                        ),
                        title: Text('Year Level and Section'),
                        subtitle: Text('3rd Year - CCE106 (3450)'),
                      ),
                      Divider(height: 1),
                      ListTile(
                        leading: Icon(
                          Icons.email,
                          color: Color.fromARGB(255, 94, 218, 176),
                        ),
                        title: Text('Email Address'),
                        subtitle: Text('j.miano.542566@umindanao.edu.ph'),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                // Introduction.
                const Text(
                  'About Me',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 8),

                const Text(
                  'I am a CS student who enjoys learning '
                  'about technology, creating, networking. '
                  'My goal is to become a Cloud Engineer.'
                  'Starting from being a Network Engineer. ',
                  style: TextStyle(fontSize: 16, height: 1.5),
                ),

                const SizedBox(height: 24),

                // Hobbies.
                const Text(
                  'Hobbies and Interests',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 8),

                const Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    Chip(label: Text('Coding')),
                    Chip(label: Text('Gaming')),
                    Chip(label: Text('Chiikawa')),
                    Chip(label: Text('Spontaneous Activities')),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
