import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

import 'emailEenter.dart';
import 'emaillogin.dart';
import 'mobileNumberVerify.dart';

class OtpPage extends StatefulWidget {
  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final TextEditingController otpController = TextEditingController();
  final int maxDigits = 4;
  late Timer _timer;
  int _countdown = 20; // Set your desired countdown time in seconds
  bool _showTimer = false;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_countdown == 0) {
          timer.cancel();
          // Hide the timer widget when the countdown reaches 0
          setState(() {
            _showTimer = false;
          });
        } else {
          setState(() {
            _countdown--;
          });
        }
      },
    );
  }

  void resetTimer() {
    // Reset the countdown and show the timer widget
    setState(() {
      _countdown = 20;
      _showTimer = true;
    });

    // Start the timer
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
        children: [

          Container(
            height: 400.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/fashion-mens-fashion-street-style-street-wear 1.png'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.8), // Adjust the opacity and color as needed
                  BlendMode.darken, // Adjust the blend mode as needed
                ),
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 44.0.h, left: 4.0.w,right: 19.0.w),
              child: Row(
                children: [
                  Container(
                    // color: Colors.white30,
                    width: 48.w,
                    height: 48.h,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back,
                        color: Colors.white,),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              )
          ),
          Padding(
            padding: EdgeInsets.only(top: 180.h, left: 22.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                Text(
                  'Enter the OTP sent to',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Inria Serif',
                    fontWeight: FontWeight.w400,
                    height: 0.07,
                    // letterSpacing: -0.20,
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  '9861 975 966',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Inria Serif',
                    fontWeight: FontWeight.w400,
                    height: 0.07,
                    letterSpacing: -0.20,
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 262.h),
            child: Container(
              // color: Colors.white,
              height: double.infinity,
              width: double.infinity,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 30.h,),
                  Row(
                    children: [
                      SizedBox(width: 20.w,),
                      PinCodeTextField(
                        pinBoxDecoration:
                        ProvidedPinBoxDecoration.defaultPinBoxDecoration,
                        pinTextStyle: TextStyle(fontSize: 22.0),
                        pinTextAnimatedSwitcherTransition:
                        ProvidedPinBoxTextAnimation.scalingTransition,
                                       // pinBoxColor: Colors.green,
                        pinBoxWidth: 63.w,
                        pinBoxHeight: 72.h,
                        highlightColor: Colors.blue,

                        pinTextAnimatedSwitcherDuration:
                        Duration(milliseconds: 200),
                                       // highlightAnimation: true,
                        highlightAnimationBeginColor: Colors.black,

                        highlightAnimationEndColor: Colors.white12,
                        keyboardType: TextInputType.number,
                        autofocus: true,
                        controller: otpController,
                        // keyboardType: TextInputType.number,
                        hideCharacter: false,
                        highlight: true,
                        maxLength: maxDigits,
                        pinBoxRadius: 10,
                        maskCharacter: "😎",
                        onTextChanged: (text) {
                          print("Current OTP: $text");
                        },
                        onDone: (text) {
                          print("Entered OTP: $text");
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 33.h,),
                  InkWell(
                    onTap: (){
                      resetTimer();
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 20,),
                        Text(
                          'I didn’t receive a code',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.699999988079071),
                            fontSize: 16,
                            fontFamily: 'Inria Sans',
                            fontWeight: FontWeight.w400,
                            height: 0.08,
                          ),
                        ),
                        SizedBox(width: 2,),
                        Text(
                          'Resend',
                          style: TextStyle(
                            color: Color(0xFF005EFE),
                            fontSize: 16,
                            fontFamily: 'Inria Sans',
                            fontWeight: FontWeight.w700,
                            height: 0.08,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 32.h,),
                  Row(
                    children: [
                      SizedBox(width: 116.w,),
                      Text(
                      'Send code again',
                      style: TextStyle(
                      color: Colors.black.withOpacity(0.699999988079071),
                      fontSize: 16,
                      fontFamily: 'Inria Sans',
                      fontWeight: FontWeight.w700,
                      height: 0.08,
                      ),
                      ),
                      SizedBox(width: 2,),
                      _showTimer
                      ? Text(
                      '00:${_countdown.toString().padLeft(2, '0')}',
                      style: TextStyle(
                      color: Color(0xFFEB4335),
                      fontSize: 16,
                      fontFamily: 'Inria Sans',
                      fontWeight: FontWeight.w400,
                      height: 0.08,
                      ),
                      )
                          : Container(),
                    ],
                  ),

                ],
              ),
            ),
          ),
          Positioned(
            left: 20.w,
            right: 20.w,
            bottom: 24.h,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>  EmailLogin()),);
              },
              child: Container(
                width: 353,
                height: 56,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 17),
                decoration: ShapeDecoration(
                  color: Color(0xFFE2F163),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Center(
                  child: Row(
                    children: [
                      Spacer(),
                      const Text(
                        'Verify',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Inria Sans',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(width: 8),
                      Container(
                        width: 24,
                        height: 24,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: const Icon(Icons.navigate_next, color: Colors.black),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}





