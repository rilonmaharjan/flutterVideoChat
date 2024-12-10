import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class CallPage extends StatefulWidget {
  final String callId, username;
  const CallPage({super.key, required this.callId, required this.username});

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: ZegoUIKitPrebuiltCall(
          appID: 490105569,
          appSign: "08b7bdc7e683985012589fe531c5ead9e8a8f90e601ede20db3765198ba4ca64",
          callID: widget.callId ,
          userID: widget.username,
          userName: widget.username,
          config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
      )
    );
  }
}
