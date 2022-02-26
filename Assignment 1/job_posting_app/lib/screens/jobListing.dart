import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_posting_app/components/jobListingContainer.dart';
import 'package:job_posting_app/components/searchTextField.dart';

class JobListing extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191720),

      body: Padding(
        padding: const EdgeInsets.only(top: 79, left: 27,right: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Welocme",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                  ),
                ),
                Spacer(),
                Icon(Icons.arrow_back_sharp, color: Colors.white,)
              ],
            ),
            Text(
              "Ishaq Hassan",
              style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.normal,
              ),
            ),
            SearchTextField(placeholder: "Search keywords"),

            SizedBox(height: 26),

            Expanded(child:ListView(
                children: <Widget>[
                  JobListingContainer(),

                ],
              ),
            ),
          ],
        ),

      ),


    );
  } // build
} // End of JobListing Class
