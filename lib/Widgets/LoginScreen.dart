// Column(
//
// children: [
// Row(
// children: [
// const SizedBox(width: 20),
// CustomBackButton(),
// const Spacer(),
// // Image.asset('assets/images/img.png'),
// // const SizedBox(width: 15,),
// ],
// ),
// const SizedBox(height: 25,),
// const Row(
// children: [
// SizedBox(width: 70,),
// Text("Log in",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
// Spacer(),
// ],
// ),
// Padding(
// padding: const EdgeInsets.all(20.0),
// child: Text("Please confirm your country code and enter your phone number",style: TextStyle(fontSize: 18,),),
// ),
// SizedBox(height: 20,),
// Padding(
// padding: const EdgeInsets.all(15.0),
// child: IntlPhoneField(
// decoration: const InputDecoration(
// labelText: 'Phone Number',
// border: OutlineInputBorder(
// borderSide: BorderSide(),
// ),
// ),
// initialCountryCode: 'IN',
// onChanged: (phone) {
// print(phone.completeNumber);
// },
// ),
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: <Widget>[
// SizedBox(width: 15,),
// Text("Sync Contacts",style: TextStyle(fontSize: 20),),
// Spacer(),// Text on the left
// Switch(
// value: syncContacts, // Use your syncContacts variable
// onChanged: (value) {
// setState(() {
// syncContacts = !syncContacts;
// });
// },
// ),
// SizedBox(width: 15,)
// ],
// ),
// Container(
// padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
// width: double.infinity,
// child: ElevatedButton(
// onPressed: () {
// // Navigator.push(context, MaterialPageRoute(
// //   builder: (context) => LanguageSelectionScreen(),),
// // );
//
// },
// style: ElevatedButton.styleFrom(
// minimumSize: Size(double.infinity, 50.0), backgroundColor: Colors.black, // Set the background color to black
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(5.0), // Adjust the value to control the roundness of the corners
// ),
// ),
// child: Text(
// "Continue",
// style: TextStyle(
// fontSize: 20,
// color: Colors.white, // Set the text color to white
// ),
// ),
// ),
// )
//
//
//
// ],
// ),