import 'package:flutter/material.dart';

class PreviousTripsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Previous Trips'),
        backgroundColor: Color(0xFFB2A59C), // لون شريط العنوان 
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your Previous Trips:',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFB2A59C), // لون النص 
                ),
              ),
              SizedBox(height: 20),
              RideCard(
                destination: 'Jeddah',
                date: 'September 1, 2024',
                price: '70 SAR',
              ),
              RideCard(
                destination: 'Taif',
                date: 'August 15, 2024',
                price: '100 SAR',
              ),
              RideCard(
                destination: 'Makkah',
                date: 'July 20, 2024',
                price: '90 SAR',
              ),
              RideCard(
                destination: 'Riyadh',
                date: 'June 10, 2024',
                price: '120 SAR',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RideCard extends StatefulWidget {
  final String destination;
  final String date;
  final String price;

  RideCard({required this.destination, required this.date, required this.price});

  @override
  _RideCardState createState() => _RideCardState();
}

class _RideCardState extends State<RideCard> {
  bool _isLiked = false; // حالة الإعجاب
  bool _isDisliked = false; // حالة عدم الإعجاب

  Widget _buildLikeDislikeIcons() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end, 
      children: [
        IconButton(
          icon: Icon(
            _isLiked ? Icons.thumb_up : Icons.thumb_up_off_alt,
            color: _isLiked ? Color(0xFF75A668) : Colors.grey, // لون الإعجاب
          ),
          onPressed: () {
            setState(() {
              _isLiked = !_isLiked;
              if (_isLiked) _isDisliked = false; // إلغاء عدم الإعجاب إذا تم الإعجاب
            });
          },
        ),
        IconButton(
          icon: Icon(
            _isDisliked ? Icons.thumb_down : Icons.thumb_down_off_alt,
            color: _isDisliked ? Colors.red : Colors.grey, // لون عدم الإعجاب
          ),
          onPressed: () {
            setState(() {
              _isDisliked = !_isDisliked;
              if (_isDisliked) _isLiked = false; // إلغاء الإعجاب إذا تم عدم الإعجاب
            });
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(
        side: BorderSide(
            color: Color(0xFFB2A59C), width: 2.0), // إطار حول البطاقة
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.location_on, size: 40, color: Color(0xFF75A668)), 
            title: Text(
              'Destination: ${widget.destination}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFFB2A59C), // لون النص 
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5),
                Text('Date: ${widget.date}'),
                Text('Price: ${widget.price}'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0, bottom: 8.0), 
            child: Align(
              alignment: Alignment.centerRight, //  الأيقونات لليمين
              child: _buildLikeDislikeIcons(),
            ),
          ),
        ],
      ),
    );
  }
}