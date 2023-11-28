// import 'package:e_commerce/home.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:subscription_management/Screens/emailEenter.dart';

import 'emaillogin.dart';
import 'enter_otp.dart';


class MobileNumberScreen extends StatefulWidget {
  const MobileNumberScreen({super.key,});
  @override
  State<MobileNumberScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MobileNumberScreen> {
  var syncContacts =false;
 TextEditingController mobileController = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      // resizeToAvoidBottomInset: false,
        body:  Stack(
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
                child: Container(
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
                )
            ),
            Padding(
              padding: EdgeInsets.only(top: 180.h, left: 22.w),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'tell us your',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Inria Serif',
                      fontWeight: FontWeight.w400,
                      // height: 0.07,
                      letterSpacing: -0.20,
                    ),
                  ),
                  Text(
                    'mobile number',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'Inria Serif',
                      fontWeight: FontWeight.w400,
                      // height: 0.07,
                      // letterSpacing: -0.20,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 262),
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:24.0, left: 20,right: 20),
                      child: Container(
                      decoration: BoxDecoration(
                      border: Border.all(color: Colors.black), // Add border to TextField
                      borderRadius: BorderRadius.circular(4), // Optional: Adjust border radius
                      ),
                      child: Padding(
                          padding: EdgeInsets.only(left: 16,right:16,top: 8,),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFormField(
                              cursorColor: Colors.black54,
                              controller: mobileController,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                labelText: 'Mobile Number',
                                labelStyle: TextStyle(
                                  color: Color(0xFF49454F),
                                  fontSize: 16,
                                  fontFamily: 'Inria Sans',
                                  fontWeight: FontWeight.w400,
                                  // height: 0.17,
                                  letterSpacing: 0.50,
                                ),
                                border: InputBorder.none,
                              ),
                              style: const TextStyle(
                                color: Color(0xFF1D1B20),
                                fontSize: 16,
                                fontFamily: 'Inria Sans',
                                fontWeight: FontWeight.w400,
                                // height: 0.09,
                                letterSpacing: 0.50,
                              ),
                            ),
                          ],
                        ),
                      )
                      ),
                    ),
                    SizedBox(height: 18),
                    Padding(
                      padding: const EdgeInsets.only(left: 21.0,right: 23),
                      child: Expanded(
                        child: Row(
                          children: [
                            SquareCheckbox(),
                            const SizedBox(width: 12,),
                            Expanded(
                              child: Text(
                                'allow Subscription Management to access',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontFamily: 'Inria Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),

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
                        builder: (context) =>  OtpPage()),);
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


class SquareCheckbox extends StatefulWidget {
  @override
  _SquareCheckboxState createState() => _SquareCheckboxState();
}

class _SquareCheckboxState extends State<SquareCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
      visualDensity: VisualDensity.compact,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    );
  }
}