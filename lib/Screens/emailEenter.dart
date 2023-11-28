// import 'package:e_commerce/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:subscription_management/Screens/emaillogin.dart';

import 'enter_otp.dart';
import 'mobileNumberVerify.dart';


class EmailEnter extends StatefulWidget {
  const EmailEnter({super.key,});
  @override
  State<EmailEnter> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<EmailEnter> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
        body:  Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 45.h,),
                CustomBackButton(),
                SizedBox(height: 40,),
                Center(
                  child: Text('Enter Your e-mail',
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),),
                SizedBox(height: 5  ,),
                Center(
                  child: Text('We\'ll be verifying this mail id',
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w300,
                    ),
                  ),),
                SizedBox(height: 90,),
                RoundedEmailTextField(),
              ],
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
                        builder: (context) =>  MobileNumberScreen()),);
                },
                child: Container(
                  width: 353.w,
                  height: 56.h,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 17),
                  decoration: ShapeDecoration(
                    color: Colors.grey.shade300,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        Spacer(),
                        const Text(
                          'Continue',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Inria Sans',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                ),
              ),
            ),

          ],
        )
    );
  }
}
class CustomBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left:8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        // border: Border.all(
        //   color: Colors.grey[200]!,
        //   width: 2.0,
        // ),
      ),
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back_ios_sharp, // Use a custom arrow icon
          color: Colors.black, // Set the arrow color
        ),
      ),
    );
  }
}

class RoundedEmailTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          hintText: 'YourName@gmail.com',
          focusColor: Colors.white,
          filled: true,
          fillColor: Colors.white, // Set the background color to white
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0), // Set the border radius
            borderSide: BorderSide(color: Colors.black.withOpacity(0.1)), // Set the border color
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 20.0.h, horizontal: 16.0.w),
          hintStyle: TextStyle(
            fontSize: 17
          ),
        ),
      ),

    );
  }
}