import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:ibo_player_drawer/navig/custom_drawer.dart';
import 'package:ibo_player_drawer/views/videoplayer/video_player.dart';
import 'package:ibo_player_drawer/widgets/categories_slider.dart';

import '../../constants/app_constants.dart';

class Feedpage extends StatefulWidget {
  const Feedpage({ Key? key, required this.animation }) : super(key: key);
  final VoidCallback animation;

  @override
  _FeedpageState createState() => _FeedpageState();
}

class _FeedpageState extends State<Feedpage> {
    final _controller = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      backgroundColor: Color(0xff1C262F),
      appBar: AppBar(
        leading: IconButton(icon: Icon(CupertinoIcons.sidebar_left), onPressed: () {widget.animation(); },),
        elevation: 0.0,
        backgroundColor: Color(0xFF1B2C3B),
        title:   Row(
                children: <Widget>[
                  Expanded(
                    child: TextFormField(

                        controller: _controller,
                        decoration: InputDecoration(
                          label: Icon(Icons.search),
                        
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          //fillColor: Colors.green
                        )),
                  ),
                  Padding(padding: const EdgeInsets.fromLTRB(40, 10, 40, 10)),
                ],
              ),
        
      ),
      //Creating the Chip list
      body:Padding(
        padding: const EdgeInsets.only(top: 0.0),
        child: Column(
          children: [
           // SizedBox(height:100,child: Categories_slider()),
            Expanded(
  
              child: ListView(
                children: <Widget>[
                     Container(
                   height: 120,
                   width: double.infinity,
                   child:ListView.builder(
                     scrollDirection: Axis.horizontal,
  itemCount: mainOPtionslist.length,
  itemBuilder: (context, index) {
    return   category_card();
  },
)
                 ),
                 Container(
                   height: 40.0,
                   width: double.infinity,
                   child:ListView.builder(
                     scrollDirection: Axis.horizontal,
  itemCount: mainOPtionslist.length,
  itemBuilder: (context, index) {
    return options(mainOPtionslist[index]);
  },
)
                 ),
                  SizedBox(height: 12.0,),
                  Row(
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 12.0),
                        child: Text(
                          "Top Trends",
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.0,),
                  Container(
                    width:double.infinity,
                    height: 230.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:12.0),
                        child: MovieCard("MoonLight", "8.5/10","assets/index.jpeg"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:12.0),
                        child: MovieCard("TSR", "8.5/10","assets/movie2.jpg"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:12.0),
                        child: MovieCard("TSR", "8.5/10","assets/movie2.jpg"),
                      ),
                    ],
                    ),
                  ),
                  const SizedBox(height: 25.0,),
                  Row(
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 12.0),
                        child: Text(
                          "Top Trends",
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12.0,),
                  Container(
                    width:double.infinity,
                    height: 230.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:12.0),
                        child: MovieCard("Moonlight", "8.5/10","assets/index.jpeg"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:12.0),
                        child: MovieCard("TSR", "8.5/10","assets/movie2.jpg"),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:12.0),
                        child: MovieCard("TSR", "8.5/10","assets/movie2.jpg"),
                      ),
                    ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container category_card() {
    return Container(
	
  width: 100,
	
  child: Card(
	
    shape: RoundedRectangleBorder(
	
      borderRadius: BorderRadius.circular(15.0),
	
    ),
	
    color: Colors.white,
	
    elevation: 10,
	
    child: Column(
	
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
	
      children: <Widget>[
	
       Icon(CupertinoIcons.videocam,color: Colors.orange,),
       Text('Live Tv',style: TextStyle(color: Colors.orange),)
	
        
	
      ],
	
    ),
	
  ),
	
);
  }

  Padding options(String title) {
    return Padding(
                 padding: EdgeInsets.symmetric(horizontal: 12.0),
                 child: Chip(
                   label: Text(title,style: TextStyle(color: Colors.orange)),
                   backgroundColor: Colors.black,
                   padding: EdgeInsets.only(left: 12.0, right: 12.0),
                 ),
               );
  }
  
  Widget MovieCard(String movieName,String rate,String imgPath){
    return InkWell(
      onTap: (){ 
        
        Get.to(const ChewieDemo());
      
      },
      child: Column(
        children: <Widget>[
          Card(
            elevation: 0.0,
            child:Image.asset(imgPath,fit: BoxFit.fill,width: 130.0,height: 160.0,),
          ),
          SizedBox(height: 5.0,),
          Text(movieName,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 26.0
            ),
            textAlign: TextAlign.start,
          ),
          SizedBox(height:5.0),
          Text(rate,style: TextStyle(
            color: Colors.white,
            fontSize: 18.0
          ),),
        ],
      ),
    );
  }
}
