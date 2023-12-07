// import 'package:e_commerce/home.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:subscription_management/Screens/mobileNumberVerify.dart';

import 'emailEenter.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;
  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  var syncContacts =false;
   IconData heart = IconData(0xf442,);
  List<String> yourImageList = ['assets/images/back.jpg','assets/images/img.png','assets/images/img.png','assets/images/img.png','assets/images/img.png','assets/images/img.png'];

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 13.0.w),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/back.jpg'),
                    radius: 16,
                  ),
                  SizedBox(width: 8.w),
                  Container(
                    width: 75.w,
                    child: Text(
                      'John Doe with a Very Long Name',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Inria Sans',
                        fontWeight: FontWeight.w700,
                        // height: 0.08,
                      ),
                      // maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.favorite, color: Colors.white),

                  SizedBox(width: 8.w),
                  Icon(Icons.notifications,color: Colors.white,),
                  SizedBox(width: 8.w),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('assets/images/medal 1.png'),
                    radius: 16,
                  ),
                ],
              ),
              SizedBox(height: 22.h,),
              Container(
                width: double.infinity,
                height: 140.h,
                decoration: ShapeDecoration(
                  color: Color(0xFF313131),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30.h,),
                    Padding(
                      padding: const EdgeInsets.only(left:12.0),
                      child: Text(
                        'Manage your subscription',
                        style: TextStyle(
                          color: Color(0xFFA6A6A6),
                          fontSize: 16,
                          fontFamily: 'Inria Serif',
                          fontWeight: FontWeight.w700,
                          height: 0.09,
                          letterSpacing: 0.50,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.h,),
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: yourImageList.length,
                        itemBuilder: (context, index) {
                          print(yourImageList.length);
                          return Row(
                            children: [
                              SizedBox(width: 12.w),
                              Column(
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: Colors.red,
                                            width: 2.0,
                                          ),
                                        ),
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage('assets/images/Screenshot 2023-09-13 at 6.27 1.png'),
                                          radius: 25,
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 25,
                                        left: 10,
                                        child: Center(
                                          child:  Text(
                                            'META',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Color(0xFFFEFFFF),
                                              fontSize: 14,
                                              fontFamily: 'Pridi',
                                              fontWeight: FontWeight.w400,
                                              height: 0.09,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                  ,

                                  SizedBox(height: 15.h,),
                                  Text(
                                    'Meta Design',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontFamily: 'Inria Sans',
                                      fontWeight: FontWeight.w400,
                                      height: 0.15,
                                    ),
                                  )                                ],
                              ),
                              SizedBox(width: 16.w),  // Adjusted width to leave space between CircleAvatars
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 34.h,),
              Row(
                children: [
                  const Text(
                    'Subscriptions you want',
                    style: TextStyle(
                      color: Color(0xFFA6A6A6),
                      fontSize: 18,
                      fontFamily: 'Inria Serif',
                      fontWeight: FontWeight.w700,
                      height: 0.07,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.group_add, color: Colors.white,),  // Icon for sorting
                    onPressed: () {
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.sort_outlined,color: Colors.white,),  // Icon for grouping
                    onPressed: () {
                    },
                  ),
                ],
              ),
              SizedBox(height: 18.h,),
              Container(
                height: 130.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Entertainment',
                      style: TextStyle(
                        color: Color(0xFF979797),
                        fontSize: 14,
                        fontFamily: 'Inria Sans',
                        fontWeight: FontWeight.w400,
                        height: 0.11,
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: yourImageList.length,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              buildCircleAvatarWithOverlay(yourImageList[index], 'Meta Design'),
                              SizedBox(width: 10.w),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(height: 18.h,),
              Container(
                height: 130,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fashion',
                      style: TextStyle(
                        color: Color(0xFF979797),
                        fontSize: 14,
                        fontFamily: 'Inria Sans',
                        fontWeight: FontWeight.w400,
                        height: 0.11,
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: yourImageList.length,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              // SizedBox(width: 12.w),
                              buildCircleAvatarWithOverlay(yourImageList[index], 'Meta Design'),
                              SizedBox(width: 10.w),  // Adjusted width to leave space between CircleAvatars
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(height: 18.h,),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Games',
                      style: TextStyle(
                        color: Color(0xFF979797),
                        fontSize: 14,
                        fontFamily: 'Inria Sans',
                        fontWeight: FontWeight.w400,
                        height: 0.11,
                      ),
                    ),
                    SizedBox(height: 10.h,),
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: yourImageList.length,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              // SizedBox(width: 12.w),
                              buildCircleAvatarWithOverlay(yourImageList[index], 'Meta Design'),
                              SizedBox(width: 10.w),  // Adjusted width to leave space between CircleAvatars
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}


Widget buildCircleAvatarWithOverlay(String imageUrl, String title) {
  return Column(
    children: [
      Stack(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/back.jpg'),
            radius: 40,
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              width: 23.w,
              height: 23.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(
                  color: Colors.red,
                  width: 2.0,
                ),
              ),
              child: Center(
                child: Text(
                  '1M+',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontFamily: 'Inria Sans',
                    fontWeight: FontWeight.w700,
                    height: 0.15,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      SizedBox(height: 15.h),
      Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 10,
          fontFamily: 'Inria Sans',
          fontWeight: FontWeight.w400,
          height: 0.15,
        ),
      ),
    ],
  );
}
