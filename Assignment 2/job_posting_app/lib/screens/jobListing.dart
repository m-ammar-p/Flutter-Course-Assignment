import 'package:flutter/material.dart';
import 'package:job_posting_app/Model/job_post.dart';
import 'package:job_posting_app/screens/updateJob.dart';
import 'package:job_posting_app/widgets/appTextField.dart';
import '../widgets/jobListingCard.dart';
import 'adPosting.dart';

List<JobPost> jobPostItem = [];

class JobListing extends StatefulWidget {
  @override
  State<JobListing> createState() => _JobListingState();
}

class _JobListingState extends State<JobListing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191720),
      resizeToAvoidBottomInset: false,
      floatingActionButton: SizedBox(
        height: 74,
        width: 74,
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {
            Navigator.of(context)
                .push<JobPost>(MaterialPageRoute(builder: (_) => AdPosting()))
                .then((value) =>
                setState(() {
                  jobPostItem.add(value!);
                }));
          },
          child: const Icon(
            Icons.add,
            size: 45,
            color: Color(0xFF191720),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 79, left: 27, right: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  "Welocme",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  }, // onTap
                  child: const Icon(
                    Icons.arrow_back_sharp,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const Text(
              "Muhammad Ammar",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.normal,
              ),
            ),

            AppTextField(placeholder: "Search keywords",
              prefixIcon: Icon(Icons.search, color: Color(0xFF5D5D67),),
              onChanged: onItemSearch,
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: jobPostItem.length,
                itemBuilder: jobItem,
              ),

            ),
          ],
        ),
      ),
    );
  } // build

  Widget jobItem(BuildContext context, int index) =>
      JobListingCard(
          title: jobPostItem[index].title,
          description: jobPostItem[index].description,
          editIconCallback: () => onUpdate(context, index),
          deleteIconCallback: () => onDelete(context, index));

  void onDelete(BuildContext context, int index) {
    setState(() {
      jobPostItem.removeAt(index);
    });
  } // onDelete

  void onUpdate(BuildContext context, int index) {
    Navigator.of(context)
        .push<JobPost>(
      MaterialPageRoute(
          builder: (_) => UpdateJob(jobPostItem: jobPostItem[index],)),
    )
        .then((value) =>
        setState(() {
          jobPostItem[index] = value!;
        }));
  } // onUpdate

  void onItemSearch(String query) {

    setState(() {

    });

  } // onItemSearch

} // End of JobListing Class
