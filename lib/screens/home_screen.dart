import 'package:flutter/material.dart';
import 'package:mobile_cv_application/screens/edit_details_screen.dart';
import 'package:mobile_cv_application/statics/assets.dart';
import 'package:mobile_cv_application/widgets/custom_row_social_media.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String fullName = 'Prudent MIGABO';
  String slackUsername = 'Prudent migabo';
  String biography = "I am Prudent MIGABO. I am passionate about software development, so I enjoy solving problems and want to gain knowledge from them. I've been using Flutter and Dart, and Google Cloud platforms including Firebase and its functions for more than two years. I enjoy practicing new talents as I learn them.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               const Text("Hello, I'm",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 5,),
              Text(fullName,
                style: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomRowSocialMedia(image: Assets.slack, height: 50, width: 50, text: slackUsername),
                    const Text('|', style: TextStyle(fontSize: 25),),
                    const CustomRowSocialMedia(image: Assets.github, height: 30, width: 30, text: 'prudent-migabo'),
                  ],
                ),
              ),
              const SizedBox(height: 40,),
              const Text('Biography',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15,),
              Text(
                  biography,
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 25,),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade700,
                  ),
                  onPressed: () async{
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> EditDetailsScreen(
                      biography: biography,
                      fullName: fullName,
                      slackUsername: slackUsername,
                    ))).then((value){
                      setState(() {
                        fullName = value["fullName"];
                        slackUsername = value["slackUsername"];
                        biography = value["biography"];
                      });
                   });
                  },
                  child: const Text(
                    'Edit information',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
