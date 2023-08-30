import 'dart:ui';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentBreakViewIdx = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(),
        Expanded(
          //height: MediaQuery.of(context).size.height - 100,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BreakingNewsView(context),
                  Row(
                    children: [
                      Text(
                        "Discover",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "View All",
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Sports",
                  ),
                  SizedBox(
                    height: 120,
                    child: PageView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        NewsCard(),
                        NewsCard(),
                        NewsCard(),
                        NewsCard(),
                      ],
                    ),
                  ),
                  Text(
                    "Entertainments",
                  ),
                  SizedBox(
                    height: 130,
                    child: PageView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        NewsCard(),
                        NewsCard(),
                        NewsCard(),
                        NewsCard(),
                      ],
                    ),
                  ),
                  Text(
                    "Politics",
                  ),
                  SizedBox(
                    height: 130,
                    child: PageView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        NewsCard(),
                        NewsCard(),
                        NewsCard(),
                        NewsCard(),
                      ],
                    ),
                  ),
                  Text(
                    "Tech",
                  ),
                  SizedBox(
                    height: 130,
                    child: PageView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        NewsCard(),
                        NewsCard(),
                        NewsCard(),
                        NewsCard(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Column BreakingNewsView(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Breaking News",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Spacer(),
            TextButton(
              onPressed: () {},
              child: Text(
                "View All",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 200,
          child: PageView(
            onPageChanged: (idx) {
              setState(() {
                currentBreakViewIdx = idx;
              });
            },
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                      image: AssetImage("assets/images/sample.jpg"),
                      fit: BoxFit.cover),
                ),
                margin: EdgeInsets.symmetric(horizontal: 4),
                padding: EdgeInsets.all(20),
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                    Spacer(),
                    Row(
                      children: [
                        Text(
                          "CNN",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.verified_rounded,color: Colors.blue,),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          ".",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFeatures: [FontFeature.enable("subs")],
                          ),
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
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color.fromRGBO(88, 147, 190, 1),
                ),
                margin: EdgeInsets.symmetric(horizontal: 4),
                height: 200,
                width: MediaQuery.of(context).size.width / 1.5,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color.fromRGBO(88, 147, 190, 1),
                ),
                margin: EdgeInsets.symmetric(horizontal: 4),
                height: 200,
                width: MediaQuery.of(context).size.width / 1.5,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color.fromRGBO(88, 147, 190, 1),
                ),
                margin: EdgeInsets.symmetric(horizontal: 4),
                height: 200,
                width: MediaQuery.of(context).size.width / 1.5,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        DotsIndicator(
          dotsCount: 4,
          position: currentBreakViewIdx,
          decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class NewsCard extends StatelessWidget {
  final String title;
  final String author;
  final String authorImagePath;
  final String mainImagePath;
  final String date;
  final bool showCategory;
  final String category;
  const NewsCard(
      {super.key,
      this.title = "What is AlAhly Doing Now, after all these winnings?",
      this.author = "Author",
      this.authorImagePath = "assets/images/sample.jpg",
      this.date = "Feb 27,2024",
      this.mainImagePath = "assets/images/sample.jpg",
      this.showCategory = false,
      this.category = "Sports"});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width - 20;

    return Container(
      width: width,
      margin: EdgeInsets.all(10),
      //color: Colors.cyan,
      child: Row(
        children: [
          SizedBox(
            width: width > 90 ? 90 : width,
            height: width > 90 ? 90 : width,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(mainImagePath),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            //color: Colors.deepOrange,
            width: (MediaQuery.of(context).size.width - 50) * 2 / 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Visibility(
                  child: Text("Category"),
                  visible: showCategory,
                ),
                Text(
                  title,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        authorImagePath,
                        fit: BoxFit.fill,
                        width: 20,
                        height: 20,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      author,
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      ".",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      date,
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    Spacer()
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(4),
      height: 50,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.all(6),
            child: Icon(
              Icons.menu,
              color: Colors.black,
              size: 20,
            ),
            decoration: BoxDecoration(
              color: Color.fromRGBO(246, 246, 247, 1),
              shape: BoxShape.circle,
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.all(6),
            child: Icon(
              Icons.search,
              color: Colors.black,
              size: 20,
            ),
            decoration: BoxDecoration(
              color: Color.fromRGBO(246, 246, 247, 1),
              shape: BoxShape.circle,
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.all(6),
            child: Icon(
              Icons.notifications_outlined,
              color: Colors.black,
              size: 20,
            ),
            decoration: BoxDecoration(
              color: Color.fromRGBO(246, 246, 247, 1),
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}
