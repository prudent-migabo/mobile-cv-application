import 'package:flutter/material.dart';
import 'package:mobile_cv_application/statics/constants.dart';
import 'package:mobile_cv_application/utils/text_field_helper.dart';

class EditDetailsScreen extends StatefulWidget {
   EditDetailsScreen({Key? key, required this.fullName, required this.slackUsername, required this.biography}) : super(key: key);

   String fullName;
   String slackUsername;
   String biography;

  @override
  State<EditDetailsScreen> createState() => _EditDetailsScreenState();
}

class _EditDetailsScreenState extends State<EditDetailsScreen> {
  final TextEditingController _fullName = TextEditingController();
  final TextEditingController _slackUsername = TextEditingController();
  final TextEditingController _biography = TextEditingController();


  @override
  void initState() {
    _fullName.text = widget.fullName;
    _slackUsername.text = widget.slackUsername;
    _biography.text = widget.biography;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
        title: Text('Edit information', style: TextStyle(color: Colors.white, fontSize: 19, fontWeight: bold),),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Edit your FullName:', style: TextStyle(fontWeight: bold),),
            const SizedBox(height: 10,),
            TextFormField(
              style: const TextStyle(fontSize: 15),
              controller: _fullName,
              decoration: editFieldsDecoration(hintText: 'FullName', labelText: 'FullName'),
            ),
            const SizedBox(height: 30,),
            Text('Edit your Slack username:', style: TextStyle(fontWeight: bold),),
            const SizedBox(height: 10),
            TextFormField(
              controller: _slackUsername,
              style: const TextStyle(fontSize: 15),
              decoration: editFieldsDecoration(hintText: 'Slack username', labelText: 'Slack username'),
            ),
            const SizedBox(height: 30,),
            Text('Edit Biography:', style: TextStyle(fontWeight: bold),),
            const SizedBox(height: 10,),
            TextFormField(
              controller: _biography,
              style: const TextStyle(fontSize: 15),
              maxLines: 6,
              decoration: editFieldsDecoration(hintText: '', labelText: ''),
            ),
            const SizedBox(height: 25,),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width/3,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade700,
                  ),
                  onPressed: (){
                    Navigator.pop(context, {
                      "fullName": _fullName.text,
                      "slackUsername": _slackUsername.text,
                      "biography": _biography.text,
                    });
                  },
                  child: const Text(
                    'Save',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
