import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/constants/colors.dart';
import 'package:myapp/constants/styles.dart';
import 'package:myapp/src/resources/home_page.dart';

class AddRoom extends StatefulWidget {
  const AddRoom({Key? key}) : super(key: key);

  @override
  State<AddRoom> createState() => _AddRoom();
}

class _AddRoom extends State<AddRoom> {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Center(
        child: Text("Add Hotel",style: MyStyle.StyleTextHomePageAppBar1),
      ),
      leading: IconButton(
        icon: Image.asset('assets/image/arrow-left.png',color: MyColor.black,),
        onPressed: ()=>{Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()))},
      ),
      backgroundColor: Colors.white10,
      elevation: 0,
    ),
    body: Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 32),
          alignment: Alignment.topLeft,
          child: Text('Hotel Name',style: MyStyle.StyleText60014b,),
        ),
        SizedBox(height: 8,),
        Container(
          padding: EdgeInsets.only(left: 32,right: 32),
          child: TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                labelText: "Input for hotel name",
                labelStyle: MyStyle.styletext,
                ),
            ),
          ),
        SizedBox(height: 8,),
        Container(
          child: Text(
            'Do not exceed 40 characters when entering.',
            style: MyStyle.StyleText40012g,
          ),
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 32),
        ),
        SizedBox(height: 16,),
        Container(
          padding: EdgeInsets.only(left: 32),
          alignment: Alignment.topLeft,
          child: Text('Address',style: MyStyle.StyleText60014b,),
        ),
        SizedBox(height: 8,),
        Container(
          padding: EdgeInsets.only(left: 32,right: 32),
          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0)),
              labelText: "Input for address",
              labelStyle: MyStyle.styletext,
            ),
          ),
        ),
        SizedBox(height: 16,),
        Container(
          padding: EdgeInsets.only(left: 32),
          alignment: Alignment.topLeft,
          child: Text('Description',style: MyStyle.StyleText60014b,),
        ),
        SizedBox(height: 8,),
        Container(
          padding: EdgeInsets.only(left: 32,right: 32),
          child: TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0)),
              labelText: "Input for description",
              labelStyle: MyStyle.styletext,
            ),
          ),
        ),
        SizedBox(height: 16,),
        Container(
          padding: EdgeInsets.only(left: 32),
          alignment: Alignment.topLeft,
          child: Text('Hotel Image',style: MyStyle.StyleText60014b,),
        ),
      ],
    ),
    bottomNavigationBar: Row(
      children: [
        Container(
          padding: EdgeInsets.only(left: 32,bottom: 34,top: 16,right: 16),
          child: RaisedButton(
            color: MyColor.white_1,
            child: Text('Cancel',
            style: TextStyle(
              color: MyColor.grey
            ),),
            onPressed: (){},
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 32,bottom: 34,top: 16,right: 16),
          child: ElevatedButton(
            child: Text('Done',
              style: TextStyle(
                  color: MyColor.white_1,
              ),),
            onPressed: (){},
          ),
        )
      ],
    )
  );

}
