import 'package:flutter/material.dart';

class ShowMoreLessButton extends StatefulWidget {
  @override
  _ShowMoreLessButtonState createState() => _ShowMoreLessButtonState();
}

class _ShowMoreLessButtonState extends State<ShowMoreLessButton> {
  bool _showMore = false;

  void _toggleShowMore() {
    setState(() {
      _showMore = !_showMore;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _showMore
              ? Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                  // Long content to show when "Show More" is clicked
                )
              : Text(
                  "Lorem ipsum dolor sit amet,",
                  // Short content to show when "Show Less" is clicked
                ),
          _showMore
              ? Image.network(
                  'https://img.freepik.com/premium-vector/quiz-logo_2728-12.jpg?w=2000',
                )
              : Image.network(
                  'https://img.freepik.com/premium-vector/colorful-movie-logo_18099-26.jpg',
                ),
          TextButton(
            onPressed: _toggleShowMore,
            child: Text(_showMore ? "Show Less" : "Show More"),
          ),
        ],
      ),
    );
  }
}
