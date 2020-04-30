import 'package:flutter/material.dart';
import 'package:insta_pic/models/detail.dart';
import 'package:insta_pic/widgets/detail.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        cursorColor: Colors.green,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<DetailModel> mockComment = [
    DetailModel(
        imgtag: "",
        profileImage: "assets/images/img1.png",
        comment: 'Good!!!',
        userName: "Nasd Tdsas",
        imageUrl:
            'https://fujifilm-x.com/wp-content/uploads/2019/08/x-t30_sample-images02.jpg'),
    DetailModel(
        imgtag: "",
        profileImage: "assets/images/img1.png",
        comment: 'Good!!!',
        userName: "Nasd Tdsas",
        imageUrl:
            'https://fujifilm-x.com/wp-content/uploads/2019/08/x-t30_sample-images02.jpg'),
    DetailModel(
        imgtag: "",
        profileImage: "assets/images/img1.png",
        comment: 'Good!!!',
        userName: "Nasd Tdsas",
        imageUrl:
            'https://fujifilm-x.com/wp-content/uploads/2019/08/x-t30_sample-images02.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Icon(
          Icons.camera,
          color: Colors.blueGrey,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.tv,
              color: Colors.grey,
            ),
            onPressed: () => null,
          ),
          IconButton(
            icon: Icon(
              Icons.share,
              color: Colors.grey,
            ),
            onPressed: () => null,
          )
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    color: Color.fromRGBO(57, 63, 71, 0),
                    child: Text(
                      "Insta Pic",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 100.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  SizedBox(width: 15),
                  CircleAvatar(
                    radius: 29,
                    backgroundColor: Color.fromRGBO(213, 37, 24, 1),
                    child: CircleAvatar(
                      radius: 27,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/images/img1.png'),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  CircleAvatar(
                    radius: 29,
                    backgroundColor: Color.fromRGBO(213, 37, 24, 1),
                    child: CircleAvatar(
                      radius: 27,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/images/img1.png'),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  CircleAvatar(
                    radius: 29,
                    backgroundColor: Color.fromRGBO(213, 37, 24, 1),
                    child: CircleAvatar(
                      radius: 27,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/images/img1.png'),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  CircleAvatar(
                    radius: 29,
                    backgroundColor: Color.fromRGBO(213, 37, 24, 1),
                    child: CircleAvatar(
                      radius: 27,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/images/img1.png'),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  CircleAvatar(
                    radius: 29,
                    backgroundColor: Color.fromRGBO(213, 37, 24, 1),
                    child: CircleAvatar(
                      radius: 27,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/images/img1.png'),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  CircleAvatar(
                    radius: 29,
                    backgroundColor: Color.fromRGBO(213, 37, 24, 1),
                    child: CircleAvatar(
                      radius: 27,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/images/img1.png'),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (ctx, int) {
                  return Card(
                      child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 10,
                                  backgroundImage:
                                      AssetImage('assets/images/img1.png'),
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.black,
                                ),
                                SizedBox(width: 15),
                                Text("Emille Porcinet"),
                                new Expanded(child: SizedBox()),
                                Icon(
                                  Icons.more_horiz,
                                  color: Color.fromRGBO(195, 196, 198, 1),
                                )
                              ],
                            ),
                            SizedBox(height: 20),
                            GestureDetector(
                              child: Hero(
                                tag: "fuji${int}",
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: AspectRatio(
                                    aspectRatio: 1 / 1,
                                    child: Image.network(
                                      'https://fujifilm-x.com/wp-content/uploads/2019/08/x-t30_sample-images02.jpg',
                                      fit: BoxFit.fill, // use this
                                    ),
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => Detail(
                                        this.mockComment[0].imageUrl,
                                        this.mockComment[0].userName,
                                        this.mockComment[0].profileImage,
                                        "fuji$int"),
                                  ),
                                );
                              },
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.headset,
                                  color: Color.fromRGBO(58, 64, 72, 1),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '354',
                                  style: TextStyle(
                                    color: Color.fromRGBO(64, 68, 75, 1),
                                  ),
                                ),
                                SizedBox(width: 20),
                                Icon(
                                  Icons.chat_bubble_outline,
                                  color: Color.fromRGBO(58, 64, 72, 1),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  '354',
                                  style: TextStyle(
                                    color: Color.fromRGBO(64, 68, 75, 1),
                                  ),
                                ),
                                new Expanded(child: SizedBox()),
                                Icon(
                                  Icons.hearing,
                                  color: Color.fromRGBO(58, 64, 72, 1),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ));
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: new BottomAppBar(
        color: Color.fromRGBO(39, 49, 72, 1),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.07,
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconButton(
                splashColor: Colors.transparent,
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 40,
                ),
                onPressed: () {
                  print('home');
                },
              ),
              IconButton(
                splashColor: Colors.transparent,
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 40,
                ),
                onPressed: () {
                  print('search');
                },
              ),
              SizedBox(width: 20),
              IconButton(
                splashColor: Colors.transparent,
                icon: Icon(
                  Icons.headset,
                  color: Colors.white,
                  size: 40,
                ),
                onPressed: () {
                  print('he phone');
                },
              ),
              IconButton(
                splashColor: Colors.transparent,
                icon: Icon(
                  Icons.supervised_user_circle,
                  color: Colors.white,
                  size: 40,
                ),
                onPressed: () {
                  print('user setting');
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: const Icon(
          Icons.camera_alt,
          color: Colors.red,
        ),
        onPressed: () {},
      ),
    );
  }
}
