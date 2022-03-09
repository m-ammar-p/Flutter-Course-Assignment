import 'package:flutter/material.dart';
import 'package:job_posting_app/Model/job_post.dart';
import 'package:job_posting_app/screens/jobListing.dart';
import 'package:job_posting_app/screens/updateJob.dart';

class JobListingCard extends StatefulWidget {
  final String title;
  final String description;
  final GestureTapCallback? editIconCallback;
  final GestureTapCallback? deleteIconCallback;

  JobListingCard({
    Key? key,
    this.title = '',
    this.description = '',
    this.editIconCallback,
    this.deleteIconCallback,
  }) : super(key: key);

  @override
  State<JobListingCard> createState() => _JobListingCardState();
}

class _JobListingCardState extends State<JobListingCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 102,
      padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
      decoration: BoxDecoration(
        color: const Color(0xFF201E27),
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.red.withOpacity(0.5),
            blurRadius: 4,
            offset: const Offset(1, 4), // Shadow position
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        widget.description,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Color(0xFF8F8F9E),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  GestureDetector(
                    onTap: widget.editIconCallback,
                    child: const Icon(
                      Icons.edit_outlined,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  GestureDetector(
                    onTap: widget.deleteIconCallback,
                    child: const Icon(
                      Icons.delete_forever_outlined,
                      color: Colors.red,
                      size: 25,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
} // End of JobListingContainer Class
