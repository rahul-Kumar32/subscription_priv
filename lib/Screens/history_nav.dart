import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class HistoryNav extends StatelessWidget {
  // Sample data
  final List<Map<String, String>> items = [
    {'name': 'Meta Design', 'description': 'Design Studio', 'rupees': '300', 'date': 'July 14 2023'},
    {'name': 'Zudio', 'description': 'Clothing', 'rupees': '150', 'date': 'July 14 2023'},
    {'name': 'Snitch', 'description': 'Clothing', 'rupees': '200', 'date': 'July 14 2023'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 13.w,vertical: 13.h),
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


                  SizedBox(width: 8.w),
                  Icon(Icons.notifications,color: Colors.white,),                  SizedBox(width: 8.w),

                ],
              ),
              SizedBox(height: 34.w,),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return buildListTile(items[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ListTile buildListTile(Map<String, String> data) {
    return ListTile(
      leading: Container(
        width: 45,
        height: 45,
        // color: Colors.black,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10)
        ),
        child: Image.asset('assets/images/fashion-mens-fashion-street-style-street-wear 1.png'),
      ),
      title: Text(data['name'] ?? '',style: TextStyle(
        fontSize: 16,
        color: Colors.white
      ),),
      subtitle: Text(data['description'] ?? '',style: TextStyle(
        color: Color(0xFF7988A3)
      ),),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text('₹${data['rupees']}',style: TextStyle(
            color: Color(0xFFE25C5C)
          ),),
          Text(data['date'] ?? '', style: TextStyle(
              color: Color(0xFF7988A3
              )
          ),),
        ],
      ),
    );
  }
}
