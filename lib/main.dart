import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(392, 852),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          appBarTheme: AppBarTheme(
            color: Colors.black,
          ),
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 410.0.h, left: 8.0.w),
              child: Container(
                width: 385.w,
                height: 393.h,
                child: Image.asset('assets/images/img_3.png',
                  fit: BoxFit.cover,
                  // width: 386.w,
                  // height: 393.h,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 146.h,),
                  Padding(
                    padding:  EdgeInsets.only(left: 8.0.w),
                    child: Container(
                      // height: 132.h,
                      width: 259.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextShow('Best'),
                          TextShow('Subscriptions'),
                          TextShow('in the Market'),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 769.0.h, left: 18.0.w),
              child: Container(
                child: CircleAvatar(
                  radius: 29.h,
                  backgroundColor: Colors.white,
                  child: Center(
                    child: Image.asset(
    'assets/images/img_2.png',
                      width: 16.w,
                      height: 9.h,

    ),
                  ),
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 769.h,left: 100.w),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(30.0.w),
                ),
                width: 272.w,
                height: 56.h,
                child:  Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Spacer(),
                      Text(
                        'Explore the future',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(width: 8.0.w,),
                      for (int i = 0; i < 3; i++)
                        Opacity(
                          opacity: (i + 1) / 3,
                          child: Icon(Icons.navigate_next),
                        ),
                      SizedBox(width: 20.0.w,),

                    ],
                  ),
                ),

              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget TextShow(String s) {
  return Text(s,
    style: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 40.sp,
      color: Colors.white,
      // fontFamily: 'Inria Serif',
    ),
  );
}

