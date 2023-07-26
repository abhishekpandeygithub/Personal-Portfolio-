import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({Key? key}) : super(key: key);

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {

myProjects(lang,title,description,stars){
  return Container(
    height: 220,
    width:MediaQuery.of(context).size.width*0.9 ,

    child: Card(
      color: Color(0xff262628),
      child:  Container(
        margin: EdgeInsets.only(left: 20,right: 20,top: 40),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text(
              lang,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25
              ),
            ),
            SizedBox(height: 20),

            Text(
             title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40
              ),
            ),
            SizedBox(height: 5),


            Text(
              description,
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 18
              ),
            ),

            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.white70,
                  size: 20,

                ),
                SizedBox(width: 4),

                Text(
                  stars,
                  style: TextStyle(color: Colors.white70),
                ),
                Expanded(child: Container()),

                IconButton(onPressed: (){


                },
                    icon: Icon(
                      FontAwesomeIcons.github,
                      color: Colors.white,
                    )
                ),
              ],
            )

          ],

        ),
      ),

    ),

  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff252525),
        title: Text('Projects'),

      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              myProjects('FLUTTER', 'PORTFOLIO', 'All about the person', '08'),
              myProjects('FLUTTER', 'PORTFOLIO', 'All about the person', '08'),
              myProjects('FLUTTER', 'PORTFOLIO', 'All about the person', '08'),
              myProjects('FLUTTER', 'PORTFOLIO', 'All about the person', '08'),
              myProjects('FLUTTER', 'PORTFOLIO', 'All about the person', '08'),
              myProjects('FLUTTER', 'PORTFOLIO', 'All about the person', '08'),
            ],
          ),

        ),
      ),
    );
  }
}
