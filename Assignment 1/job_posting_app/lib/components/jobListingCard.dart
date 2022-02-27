import 'package:flutter/material.dart';

class JobListingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.only(top: 10),
      height: 102,
      padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
      decoration: BoxDecoration(
        color: const Color(0xFF201E27),
        borderRadius: BorderRadius.circular(10.0),
        boxShadow:  [
          BoxShadow(
            color: Colors.red.withOpacity(0.5),
            blurRadius: 4,
            offset: Offset(1, 4), // Shadow position
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Flutter Developer Required",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "Karachi, Pakistan",
                      style: TextStyle(
                        color: Color(0xFF8F8F9E),
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Row(
                children: const [
                  Icon(
                    Icons.edit_outlined,
                    color: Colors.white,
                    size: 25,
                  ),
                  SizedBox(width: 25,),
                  Icon(
                    Icons.delete_forever_outlined,
                    color: Colors.red,
                    size: 25,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  } // build
} // End of JobListingContainer Class
