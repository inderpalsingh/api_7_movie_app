import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double mHeight = MediaQuery.of(context).size.height;
    double mWidth = MediaQuery.of(context).size.width;

    List<String> categories = [
    'Drama',
    'Kids',
    'Horror',
    '90\'s',
    'Action',
  ];

    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20)),
              color: Colors.grey.shade200,
            ),
            child: const ListTile(
              leading: CircleAvatar(
                  radius: 20.0,
                  backgroundImage: AssetImage('assets/images/profile.png'),
              ),
              title: Text('Hi, Inderpal', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('only watch movies'),
              trailing: Icon(Icons.notifications_outlined),
            ),
          ),
          const SizedBox(height: 10),
          /// tags/categories
          Wrap(
            spacing: 10,
            runSpacing: 0.0,
            children: categories.map((valueCat){
              return Chip(label: Text(valueCat));
            }).toList(),
          ),
          const SizedBox(height: 10),
          


         ],
      ),
    );
  }
}
