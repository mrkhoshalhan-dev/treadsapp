import 'package:flutter/material.dart';
import 'package:trez/data/datasource.dart';
import 'package:trez/data/theard.dart';
import 'package:trez/screens/thread_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Image.asset(
                  'threads.png',
                  height: 35,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: threadRemotDataSource().getThread().length,
              (context, index) {
                final theardList = threadRemotDataSource().getThread()[index];
                return InkWell(
                  onTap: (){
                    Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>ThreadScreen(),
                  ));
                  },
                  child: Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage(
                                
                                '${theardList.profileimage}',
                                ),
                               ),
                               title: Row(
                                children: [
                                  Text(
                                    theardList.name ?? 'name',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,

                                    ),
                                  ),
                                  Spacer(),
                                  Text(theardList.posted!,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                  ),
                                  SizedBox(width: 10),
                                  Icon(Icons.more_horiz)
                                ],
                               ),
                               subtitle: Text(
                                theardList.description ! ,
                                style: TextStyle(
                                  fontSize: 16,
                                  color:Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                               ),
                          ),
                         if(theardList.image != '')
                          Padding(padding: EdgeInsets.only(
                            right: 20,
                            left: 70,

                          ),
                          child: Container(
                         height:300 ,
                         width: double.infinity,
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(255, 230, 226, 214),
                          image: DecorationImage(
                            image:AssetImage("${theardList.image}"), 
                            fit: BoxFit.cover
                            ),
                         ),

                          ),
                          ),
                          SizedBox(height: 20),
                          Padding(padding: EdgeInsets.only(left: 70,),
                          child: Row(
                            children: [
                                    Icon(Icons.favorite_border),
                                    SizedBox(width: 10,),
                                    Icon(Icons.chat_bubble_outline),
                                    SizedBox(width: 10,),
                                    Icon(Icons.cached),
                                    SizedBox(width: 10,),
                                    Icon(Icons.send_outlined),
                                    SizedBox(width: 10,),
                          ],
                          ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.only(bottom: 10 ,left:15 ),
                            alignment:Alignment.bottomLeft ,
                            height: 50,
                            child: Padding(
                              padding: EdgeInsets.only(left: 70),
                              child: Text(
                                '${theardList.replies}replies .${theardList.likes} likes',
                                style: TextStyle(
                                  fontSize: 14,
                                  color:Colors.grey.shade300,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              ),
                          ),
                        ],
                      ),
Positioned(
  left: 35,
  top: 63,
  child: Container(
    height: 400,
    width: 3,
    decoration: BoxDecoration(
      color:Colors.grey.shade300,
      borderRadius: BorderRadius.circular(1),

    ),
  ),

      ),
      Positioned(
        right: 330,
        child: Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(1),
          ),
child: Stack(
  children: [
    Positioned(
      right: 0,
      child: CircleAvatar(
        
        backgroundImage: AssetImage(
          "${theardList.replier}"
        ),
        radius: 7,

      ),
    ),


    Positioned(
      left: 0,
      top: 10,
      child: CircleAvatar(
        
        backgroundImage: AssetImage(
          "${theardList.replier1}"
        ),
        radius: 7,

      ),
    ),
    
Positioned(
      right: 8,
     bottom: 0,
      child: CircleAvatar(
        
        backgroundImage: AssetImage(
          "${theardList.replier2}"
        ),
        radius: 6,

      ),
    ),


  ],
),
        ),

      ),
                    ],
                  ),
                );
              },
            ),
            ),
          ],
        ),
      ),
    );
  }
}
