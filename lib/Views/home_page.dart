import 'package:flutter/material.dart';
import 'package:ecommerce_app/Views/Shared/text_style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController tabController = TabController(length: 4, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.4,
              padding: const EdgeInsets.fromLTRB(16, 45, 0, 0),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/top_image.png"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Cat 1",
                    style: appStylewithHeight(
                      40,
                      const Color.fromARGB(255, 255, 255, 255),
                      FontWeight.bold,
                      1.2,
                    ),
                  ),
                  Text(
                    "Cat 2",
                    style: appStylewithHeight(
                      40,
                      const Color.fromARGB(255, 255, 255, 255),
                      FontWeight.bold,
                      1.2,
                    ),
                  ),
                  TabBar(
                    tabAlignment: TabAlignment.start,
                    controller: tabController,
                    indicatorColor: Colors.transparent,
                    indicatorSize: TabBarIndicatorSize.label,
                    dividerColor: Colors.transparent,
                    isScrollable: true,
                    labelColor: Colors.white,
                    labelStyle: appStyle(20, Colors.white, FontWeight.bold),
                    unselectedLabelColor: Colors.grey.withOpacity(0.7),
                    tabs: const [
                      Tab(
                        text: "Tab 1",
                      ),
                      Tab(
                        text: "Tab 2",
                      ),
                      Tab(
                        text: "Tab 3",
                      ),
                      Tab(
                        text: "Tab 4",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 250),
              child: TabBarView(
                controller: tabController,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.4,
                        // color: Colors.greenAccent,
                        child: ListView.builder(
                          itemCount: 6,
                          itemBuilder: ((context, index) {
                          return Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              height: double.infinity,
                              width: MediaQuery.of(context).size.height*.6,
                              color: Colors.grey,

                            ),
                          );
                        }),),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Latest Shoes",
                            style: appStyle(23, Colors.black, FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text("Show All",
                                  style: appStyle(
                                      23, Colors.black, FontWeight.normal)),
                              const Icon(
                                Icons.arrow_right,
                              )
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * .20,
                        color: Colors.greenAccent,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.4,
                        color: const Color.fromARGB(255, 16, 68, 43),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.4,
                        color: const Color.fromARGB(255, 199, 240, 105),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.4,
                        color: const Color.fromARGB(255, 208, 105, 240),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
