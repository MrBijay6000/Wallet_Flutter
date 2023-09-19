import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import for rootBundle

class ShowMoreLessButton1 extends StatefulWidget {
  const ShowMoreLessButton1({super.key});
  @override
  _ShowMoreLessButtonState createState() => _ShowMoreLessButtonState();
}

class _ShowMoreLessButtonState extends State<ShowMoreLessButton1> {
  bool _showMore = false;
  String _content = ''; // Content to be loaded from the file

  @override
  void initState() {
    super.initState();
    _loadContent();
  }

  void _loadContent() async {
    final content = await rootBundle.loadString('assets/sample_content.txt');
    // final content =
    setState(() {
      _content = content;
    });
  }

  void _toggleShowMore() {
    setState(() {
      _showMore = !_showMore;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _showMore
            ? Text(_content)
            : Text(
                _content.length > 50
                    ? _content.substring(0, 50) + "..."
                    : _content,
                // Display shortened content when "Show Less" is clicked
              ),
        TextButton(
          onPressed: _toggleShowMore,
          child: Text(_showMore ? "Show Less" : "Show More"),
        ),
      ],
    );
  }
}
