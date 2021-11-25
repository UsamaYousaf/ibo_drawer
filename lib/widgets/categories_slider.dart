import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class Categories_slider extends StatelessWidget {
  Categories_slider({Key? key}) : super(key: key);
 
  void initState() {
    //super.initState();
  
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child:
            //  Obx(() {
            //   return
             ListView.separated(
                    separatorBuilder: (_, i) {
                      return SizedBox(
                        width: 15,
                      );
                    },
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, i) {
                      return   Container(
	
    width: 200,
	
    child: Card(
	
      shape: RoundedRectangleBorder(
	
        borderRadius: BorderRadius.circular(15.0),
	
      ),
	
      color: Colors.pink,
	
      elevation: 10,
	
      child: Column(
	
        mainAxisSize: MainAxisSize.min,
	
        children: <Widget>[
	
          const ListTile(
	
            leading: Icon(Icons.album, size: 70),
	
            title: Text('Heart Shaker', style: TextStyle(color: Colors.white)),
	
            subtitle: Text('TWICE', style: TextStyle(color: Colors.white)),
	
          ),
	
          ButtonBar(
	
              children: <Widget>[
	
                FlatButton(
	
                  child: const Text('Edit', style: TextStyle(color: Colors.white)),
	
                  onPressed: () {},
	
                ),
	
                FlatButton(
	
                  child: const Text('Delete', style: TextStyle(color: Colors.white)),
	
                  onPressed: () {},
	
                ),
	
              ],
	
            ),
	
          
	
        ],
	
      ),
	
    ),
	
  );

                      // });
                    }
                    )
                    
                    );
  }

  Column showCategories(int i,) {
    //  Collection collect;
    return Column(
      children: [
        Padding(
            padding: i == 0
                ? const EdgeInsets.only(left: 7)
                : const EdgeInsets.only(left: 0.0),
            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(500),
              ),
              child: Column(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(500),
                        color: Colors.teal[50],
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          colorFilter: new ColorFilter.mode(
                              Colors.white.withOpacity(0.9), BlendMode.dstATop),
                          image: new NetworkImage( 'https://cdn.shopify.com/s/files/1/0364/7048/9225/files/quilt-direct_220x@2x.png?v=1599573610'),

                          //   image:ImageCache(),
                        )),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(500),
                        child: InkWell(
                          onTap: () {
                           
                          },
                          borderRadius: BorderRadius.circular(500),
                        )),
                  ),
                ],
              ),
            )),
        Container(
          width: 120,
          child: Text(
            'title',
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.lato(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
