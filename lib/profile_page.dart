import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/foto_profil.jpg'),
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  ProfileDetail(
                    icon: Icons.person,
                    color: Colors.blue,
                    text: 'Dzulfiqar Alang Setiawan',
                  ),
                  ProfileDetail(
                    icon: Icons.school,
                    color: Colors.green,
                    text: 'Universitas PGRI Semarang',
                  ),
                  ProfileDetail(
                    icon: Icons.menu_book,
                    color: Colors.orange,
                    text: 'Informatika',
                  ),
                  ProfileDetail(
                    icon: Icons.phone,
                    color: Colors.purple,
                    text: '083108857885',
                  ),
                  ProfileDetail(
                    icon: Icons.email,
                    color: Colors.teal,
                    text: 'dzulfiqaralang@gmail.com',
                  ),
                  ProfileDetail(
                    icon: Icons.location_on,
                    color: Colors.red,
                    text: 'Puri Delta Asri 1, Campurejo, Boja, Kendal',
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back to Home'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileDetail extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  ProfileDetail({required this.icon, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(fontSize: 18, color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }
}
