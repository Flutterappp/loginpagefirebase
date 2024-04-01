import 'package:flutter/material.dart';
import 'package:loginpagefirebase/src/constants/colors.dart';
import 'package:loginpagefirebase/src/constants/image_string.dart';
import 'package:loginpagefirebase/src/constants/size.dart';
import 'package:loginpagefirebase/src/constants/text_string.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       
        
        appBar: AppBar(
          leading: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          title: const Text(
            tAppName,
            style: TextStyle(fontSize: 20, fontFamily: 'Bold'),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 20, top: 7),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: tCardBgColor),
              child: IconButton(
                onPressed: () {},
                icon: const Image(
                  image: AssetImage(tUserProfileImage),
                  color: Colors.transparent,
                ),
              ),
            )
          ],
        ),
        //app bar end
        body: 
        SingleChildScrollView(
            child: Container(
          padding: const EdgeInsets.all(tDashboardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                tDashboardTitle,
                style: TextStyle(fontFamily: 'Medium', fontSize: 15),
              ),
              const Text(
                tDashboardHeading,
                style: TextStyle(fontFamily: 'Bold', fontSize: 30),
              ),
              const SizedBox(
                height: tDashboardPadding,
              ),
              Container(
                  decoration: const BoxDecoration(
                      border: Border(left: BorderSide(width: 4))),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          tDashboardSearch,
                          style:
                              const TextStyle(fontFamily: 'Bold', fontSize: 20)
                                  .apply(color: Colors.grey.withOpacity(0.5)),
                        ),
                        const Icon(
                          Icons.mic,
                          size: 25,
                        )
                      ])
                  //search bar
                  ),
              const SizedBox(
                height: tDashboardPadding,
              ),
              //Categories
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    SizedBox(
                      width: 170,
                      height: 45,
                      child: Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: tDarkColor),
                            child: const Center(
                              child: Text(
                                'H',
                                style: TextStyle(
                                    fontFamily: 'Bold',
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'HTML',
                                  style: TextStyle(
                                      fontFamily: 'Bold',
                                      fontSize: 20,
                                      overflow: TextOverflow.ellipsis),
                                ),
                                Text(
                                  '10 Lessons',
                                  style: TextStyle(
                                      fontFamily: 'Medium',
                                      fontSize: 15,
                                      overflow: TextOverflow.ellipsis),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 170,
                      height: 45,
                      child: Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: tDarkColor),
                            child: const Center(
                              child: Text(
                                'C',
                                style: TextStyle(
                                    fontFamily: 'Bold',
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'CSS',
                                  style: TextStyle(
                                      fontFamily: 'Bold',
                                      fontSize: 20,
                                      overflow: TextOverflow.ellipsis),
                                ),
                                Text(
                                  '10 Lessons',
                                  style: TextStyle(
                                      fontFamily: 'Medium',
                                      fontSize: 15,
                                      overflow: TextOverflow.ellipsis),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 170,
                      height: 45,
                      child: Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: tDarkColor),
                            child: const Center(
                              child: Text(
                                'JS',
                                style: TextStyle(
                                    fontFamily: 'Bold',
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Java Script',
                                  style: TextStyle(
                                      fontFamily: 'Bold',
                                      fontSize: 20,
                                      overflow: TextOverflow.ellipsis),
                                ),
                                Text(
                                  '10 Lessons',
                                  style: TextStyle(
                                      fontFamily: 'Medium',
                                      fontSize: 15,
                                      overflow: TextOverflow.ellipsis),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 170,
                      height: 45,
                      child: Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: tDarkColor),
                            child: const Center(
                              child: Text(
                                'D',
                                style: TextStyle(
                                    fontFamily: 'Bold',
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'DART',
                                  style: TextStyle(
                                      fontFamily: 'Bold',
                                      fontSize: 20,
                                      overflow: TextOverflow.ellipsis),
                                ),
                                Text(
                                  '10 Lessons',
                                  style: TextStyle(
                                      fontFamily: 'Medium',
                                      fontSize: 15,
                                      overflow: TextOverflow.ellipsis),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 170,
                      height: 45,
                      child: Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: tDarkColor),
                            child: const Center(
                              child: Text(
                                'F',
                                style: TextStyle(
                                    fontFamily: 'Bold',
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Flutter',
                                  style: TextStyle(
                                      fontFamily: 'Bold',
                                      fontSize: 20,
                                      overflow: TextOverflow.ellipsis),
                                ),
                                Text(
                                  '10 Lessons',
                                  style: TextStyle(
                                      fontFamily: 'Medium',
                                      fontSize: 15,
                                      overflow: TextOverflow.ellipsis),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 170,
                      height: 45,
                      child: Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: tDarkColor),
                            child: const Center(
                              child: Text(
                                'F',
                                style: TextStyle(
                                    fontFamily: 'Bold',
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'FireBase',
                                  style: TextStyle(
                                      fontFamily: 'Bold',
                                      fontSize: 20,
                                      overflow: TextOverflow.ellipsis),
                                ),
                                Text(
                                  '10 Lessons',
                                  style: TextStyle(
                                      fontFamily: 'Medium',
                                      fontSize: 15,
                                      overflow: TextOverflow.ellipsis),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: tDashboardPadding,
              ),
              //Banners
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: tCardBgColor),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                  child: Image(
                                image: AssetImage(
                                  tBookMark,
                                ),
                                width: 20,
                              )),
                              Flexible(
                                  child: Image(
                                image: AssetImage(tBookMark1),
                              )),
                            ],
                          ),
                          Text(
                            tDashboardBannerTitle,
                            style: TextStyle(fontFamily: 'Bold', fontSize: 20),
                          ),
                          Text(
                            tDashboardBannerSubTitle,
                            style:
                                TextStyle(fontFamily: 'Medium', fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: tDashboardCardPadding,
                  ),
                  Expanded(
                      child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: tCardBgColor),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 20),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                    child: Image(
                                  image: AssetImage(
                                    tBookMark,
                                  ),
                                  width: 20,
                                )),
                                Flexible(
                                    child: Image(
                                  image: AssetImage(tBookMark2),
                                  width: 200,
                                )),
                              ],
                            ),
                            Text(
                              tDashboardBannerTitle1,
                              style:
                                  TextStyle(fontFamily: 'Bold', fontSize: 20),
                            ),
                            Text(
                              tDashboardBannerSubTitle,
                              style:
                                  TextStyle(fontFamily: 'Medium', fontSize: 15),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: tDashboardCardPadding,
                      ),
                      SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                              onPressed: () {},
                              child: const Text(tDashDashboardButton)))
                    ],
                  ))
                ],
              ),
              const SizedBox(
                height: tDashboardPadding,
              ),

              //Top Course
              Text(
                tDashboardTopCourses,
                style: const TextStyle(fontFamily: 'Bold', fontSize: 20)
                    .apply(fontSizeFactor: 1.2),
              ),
              SizedBox(
                height: 200,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 320,
                      height: 200,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: tCardBgColor),
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                    child: Text(
                                  'Flutter Crash Coures',
                                  style: TextStyle(
                                    fontFamily: 'Bold',
                                    fontSize: 20,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                )),
                                Flexible(
                                    child: Image(
                                  image: AssetImage(tTopCourseImage1),
                                  height: 110,
                                )),
                              ],
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      shape: const CircleBorder(),
                                      foregroundColor: tWhiteColors,
                                      backgroundColor: tSecodaryColor,
                                      side: const BorderSide(
                                          color: tSecodaryColor),
                                      padding: const EdgeInsets.symmetric(
                                        vertical: tButtonHight,
                                      ),
                                    ),
                                    child: const Icon(Icons.play_arrow)),
                                const SizedBox(
                                  width: tDashboardCardPadding,
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '3 Sections',
                                      style: TextStyle(
                                        fontFamily: 'Bold',
                                        fontSize: 20,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      'Programming Language',
                                      style: TextStyle(
                                          fontFamily: 'Medium', fontSize: 15),
                                      overflow: TextOverflow.ellipsis,
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: tDashboardCardPadding,),
                    SizedBox(
                      width: 320,
                      height: 200,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: tCardBgColor),
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                    child: Text(
                                  'Flutter Crash Coures',
                                  style: TextStyle(
                                    fontFamily: 'Bold',
                                    fontSize: 20,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                )),
                                Flexible(
                                    child: Image(
                                  image: AssetImage(tTopCourseImage1),
                                  height: 110,
                                )),
                              ],
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      shape: const CircleBorder(),
                                      foregroundColor: tWhiteColors,
                                      backgroundColor: tSecodaryColor,
                                      side: const BorderSide(
                                          color: tSecodaryColor),
                                      padding: const EdgeInsets.symmetric(
                                        vertical: tButtonHight,
                                      ),
                                    ),
                                    child: const Icon(Icons.play_arrow)),
                                const SizedBox(
                                  width: tDashboardCardPadding,
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '3 Sections',
                                      style: TextStyle(
                                        fontFamily: 'Bold',
                                        fontSize: 20,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      'Programming Language',
                                      style: TextStyle(
                                          fontFamily: 'Medium', fontSize: 15),
                                      overflow: TextOverflow.ellipsis,
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: tDashboardCardPadding,),
                    SizedBox(
                      width: 320,
                      height: 200,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: tCardBgColor),
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                    child: Text(
                                  'Flutter Crash Coures',
                                  style: TextStyle(
                                    fontFamily: 'Bold',
                                    fontSize: 20,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                )),
                                Flexible(
                                    child: Image(
                                  image: AssetImage(tTopCourseImage1),
                                  height: 110,
                                )),
                              ],
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      shape: const CircleBorder(),
                                      foregroundColor: tWhiteColors,
                                      backgroundColor: tSecodaryColor,
                                      side: const BorderSide(
                                          color: tSecodaryColor),
                                      padding: const EdgeInsets.symmetric(
                                        vertical: tButtonHight,
                                      ),
                                    ),
                                    child: const Icon(Icons.play_arrow)),
                                const SizedBox(
                                  width: tDashboardCardPadding,
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '3 Sections',
                                      style: TextStyle(
                                        fontFamily: 'Bold',
                                        fontSize: 20,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      'Programming Language',
                                      style: TextStyle(
                                          fontFamily: 'Medium', fontSize: 15),
                                      overflow: TextOverflow.ellipsis,
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: tDashboardCardPadding,),
                    SizedBox(
                      width: 320,
                      height: 200,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: tCardBgColor),
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                    child: Text(
                                  'Flutter Crash Coures',
                                  style: TextStyle(
                                    fontFamily: 'Bold',
                                    fontSize: 20,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                )),
                                Flexible(
                                    child: Image(
                                  image: AssetImage(tTopCourseImage1),
                                  height: 110,
                                )),
                              ],
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      shape: const CircleBorder(),
                                      foregroundColor: tWhiteColors,
                                      backgroundColor: tSecodaryColor,
                                      side: const BorderSide(
                                          color: tSecodaryColor),
                                      padding: const EdgeInsets.symmetric(
                                        vertical: tButtonHight,
                                      ),
                                    ),
                                    child: const Icon(Icons.play_arrow)),
                                const SizedBox(
                                  width: tDashboardCardPadding,
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '3 Sections',
                                      style: TextStyle(
                                        fontFamily: 'Bold',
                                        fontSize: 20,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      'Programming Language',
                                      style: TextStyle(
                                          fontFamily: 'Medium', fontSize: 15),
                                      overflow: TextOverflow.ellipsis,
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              
            ],
          ),
        )),
        
        bottomNavigationBar: BottomNavigationBar(items: const<BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.grey,),label: 'Home',),
          BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.grey,),label: 'Search',),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.grey,),label: 'Profile',),
          BottomNavigationBarItem(icon: Icon(Icons.notification_add,color: Colors.grey,),label: 'Notification',),


        ],
        selectedItemColor: Colors.blue,
        backgroundColor: Colors.yellow,
              ),
      ),
    );
  }
}
