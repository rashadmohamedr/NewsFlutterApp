import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ArticlePage extends StatelessWidget {
  String articleText;
  ArticlePage(
      {super.key,
      this.articleText =
          """Saudi reports have emerged on Friday morning revealing that Al Ahly striker Mohamed Sherif has signed for Saudi Pro League club Al-Khaleej.

The report from the Saudi news outlet Alyaum claims that Sherif has agreed on a deal with Al-Khaleej and even already signed his contracts.

Sherif, 27, has been linked with a departure from Al Ahly this summer, having attracted interest from several Turkish and Gulf clubs.

What solidifies the news even more is the fact that Sherif’s contract with Al Ahly runs out in the summer of 2024, making him available on a free transfer next January.

audi reports have emerged on Friday morning revealing that Al Ahly striker Mohamed Sherif has signed for Saudi Pro League club Al-Khaleej.

The report from the Saudi news outlet Alyaum claims that Sherif has agreed on a deal with Al-Khaleej and even already signed his contracts.

Sherif, 27, has been linked with a departure from Al Ahly this summer, having attracted interest from several Turkish and Gulf clubs.

What solidifies the news even more isemerged on Friday morning revealing that Al Ahly striker Mohamed Sherif has signed for Saudi Pro League club Al-Khaleej.

The report from the Saudi news outlet Alyaum claims that Sherif has agreed on a deal with Al-Khaleej and even already signed his contracts.

Sherif, 27, has been linked with a departure from Al Ahly this summer, having attracted interest from several Turkish and Gulf clubs.

What solidifies the news even more is the fact that Sherif’s contract with Al Ahly runs out in the summer of 2024, making him available on a free transfer next January.

audi reports have emerged on Friday morning revealing that Al Ahly striker Mohamed Sherif has signed for Saudi Pro League club Al-Khaleej.

The report from the Saudi news outlet Alyaum claims that Sherif has agreed on a deal with Al-Khaleej and even already signed his contracts.

Sherif, 27, has been linked with a departure from Al Ahly this summer, having attracted interest from several Turkish and Gulf clubs.

What solidifies the news even more is the fact that Sherif’s contract with Al Ahly runs out in the summer of 2024, making him available on a free transfer next January."""});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5 + 10,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/sample.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
              Spacer(),
            ],
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 2.5 - 15,
                  width: MediaQuery.of(context).size.width,
                  //color: Colors.blueGrey,
                  child: Column(
                    children: [
                      Spacer(),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        padding: EdgeInsets.all(20),
                        height: MediaQuery.of(context).size.height / 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Spacer(),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "sports",
                                style: TextStyle(
                                  backgroundColor: Colors.blue,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Wrap(
                              textDirection: TextDirection.ltr,
                              children: [
                                Text(
                                  "What is AlAhly Doing Now, after all these winnings?",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8,),
                            Row(
                              children: [
                                Text(
                                  "Trending",
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "6 hours ago",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  //height: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(15),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.verified_rounded,
                              color: Colors.blue,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "CNN",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Text(
                          articleText,
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 15,
            left: 15,
            right: 15,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Color.fromRGBO(0, 0, 0, 0.4),
                  child: IconButton(
                    padding: EdgeInsets.all(8),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios_new_rounded),
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  backgroundColor: Color.fromRGBO(0, 0, 0, 0.4),
                  child: IconButton(
                    padding: EdgeInsets.all(8),
                    onPressed: () {},
                    icon: Icon(Icons.bookmark_border_outlined),
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundColor: Color.fromRGBO(0, 0, 0, 0.4),
                  child: IconButton(
                    padding: EdgeInsets.all(8),
                    onPressed: () {},
                    icon: Icon(Icons.more_horiz),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
