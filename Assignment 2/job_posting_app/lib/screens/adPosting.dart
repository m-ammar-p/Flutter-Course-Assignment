import 'package:flutter/material.dart';
import 'package:job_posting_app/Model/job_post.dart';
import 'package:job_posting_app/screens/jobListing.dart';
import '../widgets/appButton.dart';
import '../widgets/appTextField.dart';
import '../widgets/textArea.dart';

class AdPosting extends StatefulWidget {

  @override
  State<AdPosting> createState() => _AdPostingState();
}

class _AdPostingState extends State<AdPosting> {

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191720),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(top: 89, left: 27, right: 27),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => JobListing()),
                    );
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                const Text(
                  "Add New Job",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 25),
                ),
              ],
            ),
            Expanded(
                flex: 10,
                child: SingleChildScrollView(
                  child: Column(
                    children:  [
                      SizedBox(
                        height: 11,
                      ),
                      AppTextField(
                        placeholder: 'Enter position name', controller: titleController,
                      ),
                      TextArea(
                        minLines: 11,
                        maxLines: 11,
                        controller: descriptionController,
                      ),
                    ],
                  ),
                )),
            const Spacer(),
            AppButton(
              label: "Submit Job",
              onPress: () {
                onSubmit(context);
              },
            ),
          ],
        ),
      ),
    );
  }
 // build
  void onSubmit(BuildContext context){
    Navigator.pop(context, JobPost(titleController.text, descriptionController.text));
  }
} // End of JobPosting class
