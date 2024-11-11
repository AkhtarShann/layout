import 'package:flutter/material.dart';

class MyBirthdayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layouts'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.cloud),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Image Section
            Image.network(
              'https://example.com/your_image_url.png', // Replace with your image URL
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title Section
                  Text(
                    'My Birthday',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  // Description Section
                  Text(
                    'It\'s going to be a great birthday. We are going out for '
                        'dinner at my favorite place, then watch a movie after we '
                        'go to the gelateria for ice cream and espresso.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  // Weather and Location Section
                  Row(
                    children: [
                      Icon(Icons.wb_sunny, color: Colors.orange),
                      SizedBox(width: 8),
                      Text('81° Clear'),
                      SizedBox(width: 16),
                      Text('4500 San Alpho Drive, Dallas, TX'),
                    ],
                  ),
                  SizedBox(height: 16),
                  // Gift Buttons
                  Wrap(
                    spacing: 8.0,
                    children: List.generate(7, (index) {
                      return ElevatedButton(
                        onPressed: () {},
                        child: Text('Gift ${index + 1}'),
                      );
                    }),
                  ),
                  SizedBox(height: 16),
                  // Food Images Section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://example.com/food1.png'), // Replace with actual image URL
                        radius: 40,
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://example.com/food2.png'), // Replace with actual image URL
                        radius: 40,
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://example.com/food3.png'), // Replace with actual image URL
                        radius: 40,
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Music',
          ),
        ],
      ),
    );
  }
}
