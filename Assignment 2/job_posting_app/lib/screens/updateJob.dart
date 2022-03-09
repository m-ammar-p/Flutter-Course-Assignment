import 'package:flutter/material.dart';
import 'package:job_posting_app/screens/jobListing.dart';
import '../Model/job_post.dart';
import '../widgets/appButton.dart';
import '../widgets/appTextField.dart';
import '../widgets/textArea.dart';

class UpdateJob extends StatelessWidget {

  JobPost jobPostItem;
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  UpdateJob({Key? key, required this.jobPostItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    titleController.text = jobPostItem.title;
    descriptionController.text = jobPostItem.description;

    return Scaffold(
      backgroundColor: const Color(0xFF191720),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(top: 89, left: 27),
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
                  "Edit Job",
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
                        controller: titleController,
                        placeholder: 'Enter position name',
                      ),
                      TextArea(
                        controller: descriptionController,
                        minLines: 11,
                        maxLines: 11,
                      ),
                    ],
                  ),
                )),
            const Spacer(),
            AppButton(
              label: "Update Job",
              onPress: () {
                onUpdate(context);
              },
            ),
          ],
        ),
      ),
    );
  } // build

  void onUpdate(BuildContext context){
    Navigator.pop(context, JobPost(titleController.text, descriptionController.text));
  }
} // End of UpdateJob class
