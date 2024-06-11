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
          const SizedBox(height: 60),
          Container(
            decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.only(bottomLeft: Radius.circular(20)),
              color: Colors.grey.shade200,
            ),
            child: const ListTile(
              leading: CircleAvatar(
                radius: 20.0,
                backgroundImage: AssetImage('assets/images/profile.png'),
              ),
              title: Text('Hi, Inderpal',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('only watch movies'),
              trailing: Icon(Icons.notifications_outlined),
            ),
          ),
          const SizedBox(height: 10),

          /// tags/categories
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: mHeight * 0.05,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: mWidth * 0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      color: Colors.yellow),
                  child: const Center(
                      child: Text('Drama',
                          style: TextStyle(fontWeight: FontWeight.bold))),
                ),
                const SizedBox(width: 10),
                Container(
                  width: mWidth * 0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      color: Colors.yellow),
                  child: const Center(
                      child: Text('Drama',
                          style: TextStyle(fontWeight: FontWeight.bold))),
                ),
                const SizedBox(width: 10),
                Container(
                  width: mWidth * 0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      color: Colors.yellow),
                  child: const Center(
                      child: Text('Drama',
                          style: TextStyle(fontWeight: FontWeight.bold))),
                ),
                const SizedBox(width: 10),
                Container(
                  width: mWidth * 0.3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      color: Colors.yellow),
                  child: const Center(
                      child: Text('Drama',
                          style: TextStyle(fontWeight: FontWeight.bold))),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          /// Popular movies
          Container(
            height: 150,
            color: Colors.yellow,
            padding: EdgeInsets.only(left: 20),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: 100,
                  child: Stack(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(21),
                          child: Image.network(
                            fit: BoxFit.cover,
                              'https://images.pexels.com/photos/21404295/pexels-photo-21404295/free-photo-of-the-inside-of-a-greenhouse-with-plants-and-ferns.jpeg')),
                      const Positioned(
                        top: 120,
                        left: 25,
                        child: CircleAvatar(backgroundColor: Color(0xff0f3bf17),child: Text('7.8')),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),

              ],
            ),
          ),
          Text('Selections', style: TextStyle(fontWeight: FontWeight.bold),)


        ],
      ),
    );
  }
}
