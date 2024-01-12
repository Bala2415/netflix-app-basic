import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Netflix App',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Netflix'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Netflix Originals'),
          // Display a list of Netflix originals
          // You would typically fetch this data from an API
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                MovieCard('Movie 1'),
                MovieCard('Movie 2'),
                MovieCard('Movie 3'),
                // Add more MovieCard widgets for other movies
              ],
            ),
          ),
          Text('Top Picks for You'),
          // Display a list of top picks
          // You would typically fetch this data from an API
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                MovieCard('Movie 4'),
                MovieCard('Movie 5'),
                MovieCard('Movie 6'),
                // Add more MovieCard widgets for other movies
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MovieCard extends StatelessWidget {
  final String title;

  MovieCard(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Movie poster image
          Container(
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
              image: DecorationImage(
                image: AssetImage(
                    'assets/movie_poster.jpg'), // Replace with your movie poster image
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Movie title
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
