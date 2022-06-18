import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/constants/colors.dart';
import 'package:myapp/constants/paddings.dart';
import 'package:myapp/constants/styles.dart';
import 'package:myapp/constants/users.dart';
import 'package:myapp/src/resources/HotelDetail.dart';
import 'package:myapp/src/resources/HotelDetailAddRoom.dart';
import 'package:myapp/src/resources/LoginPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            titleSpacing: 0,
            centerTitle: false,
            backgroundColor: Colors.white10,
            elevation: 0,
            title: Column(
              children: [
                SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 64,
                  width: 191,
                  child: Flexible(
                      child: RichText(
                    text: TextSpan(
                      text: 'Hello Linh,\nExplore ',
                      style: MyStyle.StyleTextHomePageAppBar1,
                      children: <TextSpan>[
                        TextSpan(
                          text: 'New Hotels',
                          style: MyStyle.StyleTextHomePageAppBar2,
                        )
                      ],
                    ),
                  )),
                ),
              ],
            ),
            actions: [
              IconButton(
                  onPressed: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => AddRoom()))
                      },
                  icon: Image.asset('assets/image/add-square.png'))
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) => Card(
                child: InkWell(
                  onTap: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HotelDetail()))
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0)),
                    child: Column(
                      children: [
                        Container(
                          padding: MyPadding.C_HP,
                          child: Image.asset('assets/image/HotelCardImage.png'),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Container(
                          padding: MyPadding.C_HP,
                          child: Stack(
                            children: [
                              Container(
                                child: Text(
                                  'Leslie Alexander',
                                  style: MyStyle.StyleText60014b,
                                ),
                                padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                                alignment: Alignment.topLeft,
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Image.asset(
                                      'assets/image/star.png',
                                      height: 16,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset(
                                      'assets/image/star.png',
                                      height: 16,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset(
                                      'assets/image/star.png',
                                      height: 16,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset(
                                      'assets/image/star.png',
                                      height: 16,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Image.asset(
                                      'assets/image/star.png',
                                      height: 16,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      '5.0',
                                      style: MyStyle.StyleText40014b,
                                    ),
                                  ],
                                ),
                                padding: EdgeInsets.only(right: 16),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              child: Image.asset('assets/image/location.png'),
                              padding: EdgeInsets.fromLTRB(17, 9, 10, 19),
                            ),
                            Container(
                              child: Text(
                                '1901 Thornridge Cir. Shiloh, Hawaii 81063',
                                style: MyStyle.stylealive,
                              ),
                              padding: EdgeInsets.fromLTRB(0, 6, 16, 15),
                            )
                          ],

                        ),
                      ],
                    ),
                  ),
                ),
                margin: const EdgeInsets.all(16),
              ),
              childCount: 15,
            ),
          ),
        ],
      ),
    );
  }
}
