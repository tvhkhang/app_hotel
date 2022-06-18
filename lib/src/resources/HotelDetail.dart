import 'package:flutter/material.dart';
import 'package:myapp/constants/colors.dart';
import 'package:myapp/src/resources/home_page.dart';

class HotelDetail extends StatefulWidget {
  const HotelDetail({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HotelDetail();
}

class _HotelDetail extends State<HotelDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: IconButton(
                onPressed: () =>{ Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()))},
                icon: Image.asset(
                  'assets/image/arrow-left.png',
                  height: 24,
                  width: 24,
                  color: MyColor.white_1,
                )),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/image/export.png',
                    height: 24,
                    width: 24,
                    color: MyColor.white_1,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/image/archive-tick.png',
                    height: 24,
                    width: 24,
                    color: MyColor.white_1,
                  )),
            ],
            pinned: true,
            snap: true,
            floating: true,
            elevation: 0,
            expandedHeight: 388.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                image: AssetImage('assets/image/BackgroundHotelDetail.png'),
                height: 388.0,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(32),topRight: Radius.circular(32)),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 28,
                  ),
                  Row(children: [
                    Text(
                      "Leslie Alexander",
                      style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: MyColor.black),
                    ),
                  ]),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/image/star.png',
                        height: 16,
                      ),
                      Image.asset(
                        'assets/image/star.png',
                        height: 16,
                      ),
                      Image.asset(
                        'assets/image/star.png',
                        height: 16,
                      ),
                      Image.asset(
                        'assets/image/star.png',
                        height: 16,
                      ),
                      Image.asset(
                        'assets/image/star.png',
                        height: 16,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '5.0 (1,2k reviews)',
                        style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: MyColor.black),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/image/location.png',
                        height: 14,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '1901 Thornridge Cir. Shiloh, Hawaii 81063',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: MyColor.grey,
                            fontFamily: 'poppins'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 29,
                  ),
                  Row(
                    children: [
                      Text(
                        "Description",
                        style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: MyColor.blue),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          "Located in Marco Island, Marriott's Crystal Shores is near the beach. The area's natural beauty can be seen at Marco Beach and Tigertail Beach. Traveling with kids? Consider Marco Golf and... read more",
                          style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontFamily: 'poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: MyColor.black),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Stack(
                    children: [
                      Container(
                        child: Text(
                          "Reviews",
                          style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: MyColor.blue),
                        ),
                        alignment: Alignment.topLeft,
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "See more",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontFamily: 'poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: MyColor.black),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
