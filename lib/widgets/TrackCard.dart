import 'package:flutter/material.dart';

class TrackCard extends StatelessWidget {
  TrackCard({this.title, this.subtitle});

  final String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xFFFFE3E3), borderRadius: BorderRadius.circular(24)),
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  '$title',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Lato-Black',
                  ),
                ),
              ),
              SizedBox(height: 8),
              Container(
                child: Text(
                  '$subtitle',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Lato-Regular',
                  ),
                ),
              )
            ],
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xff1c2e4a),
                ),
                child: Icon(Icons.arrow_forward_ios_rounded, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
