// import 'package:e_commerce/home.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:subscription_management/Screens/mobileNumberVerify.dart';


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
        body: SingleChildScrollView(
          child: Stack(
            children: [

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
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 4.w, top: 232.h),
                      width: 89.w,
                      height: 18.h,
                      alignment: Alignment.topLeft,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                      ),
                      child: Text(
                        'GRANT ACCESS',
                        style: TextStyle(
                          color: Color(0xFF979797),
                          fontSize: 14,
                          fontFamily: 'Inria Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 2.w, top: 10.h),
                      width: 314,
                      height: 54,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                      ),
                      child: RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          text: 'We need the following permissions',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Inria Serif',
                            fontWeight: FontWeight.w400,
                          ),
                          children: [
                            WidgetSpan(
                              child: SizedBox(height: 10),
                            ),
                            TextSpan(
                              text: 'to proceed',
                            ),
                          ],
                        ),
                      ),
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
                        Padding(
                          padding:  EdgeInsets.only(top: 5.0.h),
                          child: Text(
                            'Allow camera access',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0.09,
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
                        Padding(
                          padding:  EdgeInsets.only(top: 5.0.h),
                          child: Text(
                            'Allow XYZ to access this device’s location',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0.09,
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
                        Padding(
                          padding:  EdgeInsets.only(top: 5.0.h),
                          child: Text(
                            'Allow XYZ to access your contacts?',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0.09,
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
                        Padding(
                          padding:  EdgeInsets.only(top: 5.0.h),
                          child: Text(
                            'Allow audio to access ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0.09,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w, top: 772.h),
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
                    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 17.h),
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
                          SizedBox(width: 8.w),
                          Container(
                            width: 24.w,
                            height: 24.h,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(),
                            child: const Icon(Icons.navigate_next, color: Colors.black),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ),
                )

              )
            ],
          ),
        )
    );
  }
}

