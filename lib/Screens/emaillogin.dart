// import 'package:e_commerce/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:subscription_management/Screens/emailEenter.dart';


class EmailLogin extends StatefulWidget {
  @override
  State<EmailLogin> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<EmailLogin> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body:  Stack(
        children: [


          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/fashion-mens-fashion-street-style-street-wear 1.png'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.6),
                  BlendMode.darken,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 336.h),
            child: Container(
              // color: Colors.white,
              height: double.infinity,
              width: double.infinity,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 95.h,),
                  Row(
                    children: [
                      Spacer(),
                      Container(
                        // width: 297.w,
                        height: 42.h,
                        child: InkWell(
                          onTap: () {

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>  EmailEnter()),);
                          },
                          child: Text(
                            'Choose an account',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 32,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              // height: 0.04,
                              // letterSpacing: -0.32,

                            ),
                            maxLines: 2,
                          ),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                  Row(
                    children: [
                      Spacer(),
                      SizedBox(
                        width: 319.w,
                        child: Text(
                          'to continue to slice',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            // height: 0.07,
                          ),
                          maxLines: 2,
                        ),
                      ),
                      Spacer(),
                    ],
                  )
                ],
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

        ],
      ),
    );
  }
}
class CustomBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
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
