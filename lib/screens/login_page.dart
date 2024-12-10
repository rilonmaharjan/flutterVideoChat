import 'package:flutter/material.dart';
import 'package:flutter_video_call/components/text_field_widget.dart';
import 'package:flutter_video_call/constants/button_style.dart';
import 'package:flutter_video_call/screens/home_page.dart';
class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final TextEditingController username=TextEditingController();

  @override
  void dispose() {
    super.dispose();
    username.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: Padding(
          padding:const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const  SizedBox(height: 50,),
              TextFieldWidget(
                  controller:username ,
                  hintText: 'Username',
                  icon:const Icon(Icons.person)
              ),
              const   SizedBox(height: 30,),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                    onPressed: (){
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context)=> HomePage(username: username.text.toString(),)));
                    },
                  style: buttonStyle,
                    child:const  Text('Sign In',style: buttonTextStyle),
                ),
              )
            ],
          ),
      ),
    );
  }
}