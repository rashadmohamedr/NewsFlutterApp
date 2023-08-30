import 'package:cupertino_radio_choice/cupertino_radio_choice.dart';
import 'package:flutter/material.dart';
import 'package:news_app/pages/home_page.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Discover",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                          ),
                        ),
                        Text(
                          "News from all around the world",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                          ),
                        ),
                        Container(
                          height: 40,
                          margin: EdgeInsets.only(top: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color.fromRGBO(221, 220, 220, 1),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search",
                              prefixIcon: Icon(Icons.search),
                              suffixIcon: Icon(Icons.tune),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Transform.scale(
                      scale: 0.75,
                      child: CupertinoRadioChoice(
                        choices: {
                          'all': 'All',
                          'politic': 'Politic',
                          'edu': 'Education',
                          'sports': 'Sports',
                          'entertainmens': 'Entertainmens',
                          'tech': 'Tech',
                          'politirc': 'Politic',
                          'edurr': 'Education',
                          'sporrts': 'Sports',
                          'entrertainmens': 'Entertainmens',
                          'terch': 'Tech',
                        },
                        onChange: (selected) {},
                        initialKeyValue: 'all',
                      ),
                    ),
                  ),
                  NewsCard(showCategory: true,),
                  NewsCard(showCategory: true,),
                  NewsCard(showCategory: true,),
                  NewsCard(showCategory: true,),
                  NewsCard(showCategory: true,),
                  NewsCard(showCategory: true,),
                  NewsCard(showCategory: true,),
                  NewsCard(showCategory: true,),
                  NewsCard(showCategory: true,),
                  NewsCard(showCategory: true,),
                  NewsCard(showCategory: true,),
                  NewsCard(showCategory: true,),
                  NewsCard(showCategory: true,),
                  NewsCard(showCategory: true,),
                ],
              ),
            ),
          ),
        ],
    );
  }
}
