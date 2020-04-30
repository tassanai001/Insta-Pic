import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  final String profileImage;
  final String userName;
  final String imageUrl;
  final String imgTag;

  Detail(this.imageUrl, this.userName, this.profileImage, this.imgTag);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> with TickerProviderStateMixin {
  ScrollController _scrollViewController;
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _scrollViewController = new ScrollController();
    _tabController = new TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _scrollViewController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: new NestedScrollView(
          controller: _scrollViewController,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              new SliverAppBar(
                leading: IconButton(
                  color: Color.fromRGBO(58, 63, 71, 1),
                  icon: Icon(Icons.keyboard_backspace),
                  onPressed: () => Navigator.pop(context),
                ),
                elevation: 0,
                backgroundColor: Colors.white,
                pinned: true,
                floating: true,
                forceElevated: innerBoxIsScrolled,
                actions: <Widget>[
                  AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Container(
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(60, 0, 0, 0),
                              blurRadius: 5.0,
                              offset: Offset(0.0, 0.0))
                        ],
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: new ExactAssetImage('assets/images/img1.png'),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 20.0,
                      top: 20.0,
                      right: 20.0,
                      left: 10.0,
                    ),
                    child: Text(
                      "Emilie Porcinet",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(57, 62, 68, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ];
          },
          body: Column(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
                child: Column(
                  children: <Widget>[
                    Hero(
                      tag: this.widget.imgTag,
                      child: AspectRatio(
                        aspectRatio: 1 / 1,
                        child: Image.network(
                          this.widget.imageUrl,
                          fit: BoxFit.fill, // use this
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (ctx, int) {
                    return Card(
                      elevation: 0.0,
                      child: ListTile(
                        title: Text('User'),
                        subtitle:
                            Text('this is a description of the motivation'),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: new BottomAppBar(
        color: Color.fromRGBO(39, 49, 72, 1),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.07,
          child: Container(
            margin: const EdgeInsets.only(top: 10.0),
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 15),
                    hintText: 'Add a comment ...',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
