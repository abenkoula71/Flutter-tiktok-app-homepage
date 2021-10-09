import 'package:flutter/material.dart';
import 'package:tiktoklikescroller/tiktoklikescroller.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List user = [
    {
      'name': "@abderrahmane",
      'description': 'Hello every body',
      'image': 'img/1.jpg',
      'like': '110.9M',
      'comment': '100.3K',
      'share': '1.5M',
      'music_Image': 'img/11.jpg'
    },
    {
      'name': "@abderrahmane",
      'description': 'Hello every to my new tiktok',
      'image': 'img/1.jpg',
      'like': '10.9M',
      'comment': '10.3K',
      'share': '1M',
      'music_Image': 'img/11.jpg'
    },
    {
      'name': "@abderrahmane",
      'description': 'Hello every this is new instagrame',
      'image': 'img/1.jpg',
      'like': '110.9M',
      'comment': '100.3K',
      'share': '1.5M',
      'music_Image': 'img/11.jpg'
    },
    {
      'name': "@abderrahmane",
      'description': 'Hello every body',
      'image': 'img/1.jpg',
      'like': '110.9M',
      'comment': '100.3K',
      'share': '1.5M',
      'music_Image': 'img/11.jpg'
    },
    {
      'name': "@abderrahmane",
      'description': 'Hello every body',
      'image': 'img/1.jpg',
      'like': '110.9M',
      'comment': '100.3K',
      'share': '1.5M',
      'music_Image': 'img/11.jpg'
    },
    {
      'name': "@hmida",
      'description':
          ' ezfze fzefez fezfezf zefze foefoefze fezf ze f ezfzef zefze fezf ezfze fzefez fezfezf zefze foefoefze fezf ze f ezfzef zefze fezf ezfze fzefez fezfezf zefze f...',
      'image': 'img/1.jpg',
      'like': '11.9M',
      'comment': '10.3K',
      'share': '500.2k',
      'music_Image': 'img/11.jpg'
    }
  ];
  final List<Color> colors = <Color>[
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
  ];
  var like = 0;
  @override
  Widget build(BuildContext context) {
    var hei = MediaQuery.of(context).size.height;
    var wid = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          TikTokStyleFullPageScroller(
            contentSize: user.length,
            swipePositionThreshold: 0.2,
            // ^ the fraction of the screen needed to scroll
            swipeVelocityThreshold: 2000,
            // ^ the velocity threshold for smaller scrolls
            animationDuration: const Duration(milliseconds: 300),
            // ^ how long the animation will take
            onScrollEvent: _handleCallbackEvent,
            // ^ registering our own function to listen to page changes
            builder: (BuildContext context, int index) {
              // like = 0;
              return Stack(
                children: [
                  Container(
                    color: colors[index],
                    child: Center(
                      child: Text(
                        '$index',
                        key: Key('$index-text'),
                        style:
                            const TextStyle(fontSize: 48, color: Colors.white),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 25, left: 10),
                        alignment: Alignment.bottomLeft,
                        width: wid - 110,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              user[index]['name'],
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700),
                            ),
                            Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Text(
                                  user[index]['description'],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                ))
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 15),
                        alignment: Alignment.bottomRight,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              child: Stack(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                user[index]['image'])),
                                        border: Border.all(
                                            width: 2, color: Colors.white),
                                        color: Colors.orange,
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    margin:
                                        EdgeInsets.only(top: 39.5, left: 14.5),
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.pink,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Text(
                                      '+',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 70,
                              height: 70,
                              child: Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        if (like == 0) {
                                          like = 1;
                                        } else {
                                          like = 0;
                                        }
                                      });
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(right: 10),
                                      width: 50,
                                      height: 50,
                                      child: Icon(
                                        Icons.favorite,
                                        size: 50,
                                        color: like != 1
                                            ? Colors.white
                                            : Colors.pink,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 10),
                                    child: Text(
                                      user[index]['like'],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 70,
                              height: 70,
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 10),
                                    width: 50,
                                    height: 50,
                                    child: Icon(
                                      Icons.comment,
                                      size: 40,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 10),
                                    child: Text(
                                      user[index]['comment'],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              alignment: Alignment.center,
                              width: 70,
                              height: 70,
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 10),
                                    width: 50,
                                    height: 50,
                                    child: Icon(
                                      Icons.share,
                                      size: 40,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 10),
                                    child: Text(
                                      user[index]['share'],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          user[index]['music_Image'])),
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(40)),
                            ),
                          ],
                        ),
                      ),
                      // music image
                    ],
                  ),
                ],
              );
            },
          ),
          Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.only(top: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Abonnements',
                  style: TextStyle(
                      letterSpacing: 1,
                      color: Colors.white70,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '|',
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Pour toi',
                  style: TextStyle(
                      letterSpacing: 1,
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 55, right: 10),
            alignment: Alignment.topRight,
            child: Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 60,
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.home,
                  size: 30,
                  color: Colors.white,
                ),
                Text(
                  'Accueil',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.white,
                ),
                Text(
                  'Decouvrir',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Container(
              width: 50,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.pink[500],
                    ),
                    margin: EdgeInsets.only(left: 15),
                    height: 30,
                    width: 35,
                  ),
                  Container(
                    height: 30,
                    width: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: Colors.blue[400],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 6),
                    width: 38,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Text(
                      '+',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.home,
                  size: 33,
                  color: Colors.white,
                ),
                Text(
                  'Boite de recept',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.person_outline,
                  size: 30,
                  color: Colors.white,
                ),
                Text(
                  'Profil',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void _handleCallbackEvent(ScrollEventType type, {int? currentIndex}) {
    print(
        "Scroll callback received with data: {type: $type, and index: ${currentIndex ?? 'not given'}}");
  }
}
