// import 'package:e_commerce/home.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:subscription_management/Screens/mobileNumberVerify.dart';

import 'emailEenter.dart';


class TakePermissions extends StatefulWidget {
  const TakePermissions({super.key, required this.title});
  final String title;

  @override
  State<TakePermissions> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<TakePermissions> {
  var syncContacts =false;

  @override
  Widget build(BuildContext context) {

    bool forAndroid=false;
    return  Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 44.0.h, left: 4.0.w,right: 19.0.w),
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.arrow_back,
                              color: Colors.white,),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          Spacer(),
                          RichText(
                            text: TextSpan(
                              text: 'skip',
                              style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>  MobileNumberScreen()),);
                                },
                            ),
                          )
                        ],
                      )
                    ),

                    Padding(
                      padding:  EdgeInsets.only(left: 20.0.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height:220.h),
                          Row(

                            children: [Text(
                              'GRANT ACCESS',
                              style: TextStyle(
                                color: Color(0xFF979797),
                                fontSize: 14,
                                fontFamily: 'Inria Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            ),]
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding:  EdgeInsets.only(left:2.0.w,top: 10.h),
                                  child: Text(
                                    'We need the following permissions to proceed',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'Inria Serif',
                                      fontWeight: FontWeight.w400,
                                    ),
                                    maxLines: 3, // Set the maximum number of lines
                                    overflow: TextOverflow.ellipsis, // Optional: Add ellipsis for overflow
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 25.h,),
                          Row(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.camera_alt_outlined,
                                color: Colors.blue,
                                size: 18,
                              ),
                              SizedBox(width: 12.w,),
                              Expanded(
                                child: Padding(
                                  padding:  EdgeInsets.only(top: 5.0.h),
                                  child: Text(
                                    'Allow camera access',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.h,),
                          Row(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.blue,
                                size: 20,
                              ),
                              SizedBox(width: 12.w,),
                              Expanded(
                                child: Padding(
                                  padding:  EdgeInsets.only(top: 5.0.h),
                                  child: Text(
                                    'Allow XYZ to access this device’s location',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      // height: 0.09,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.h,),
                          Row(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.contact_page_outlined,
                                color: Colors.blue,
                                size: 20,
                              ),
                              SizedBox(width: 12.w,),
                              Expanded(
                                child: Padding(
                                  padding:  EdgeInsets.only(top: 5.0.h),
                                  child: Text(
                                    'Allow XYZ to access your contacts?',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.h,),
                          Row(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.audio_file_outlined,
                                color: Colors.blue,
                                size: 20,
                              ),
                              SizedBox(width: 12.w,),
                              Expanded(
                                child: Padding(
                                  padding:  EdgeInsets.only(top: 5.0.h),
                                  child: Text(
                                    'Allow audio to access ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
                        builder: (context) =>  EmailEnter()),);
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
                          'Proceed',
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

