import 'package:flutter/material.dart';

class TeamFolderPage extends StatefulWidget {
  const TeamFolderPage({super.key});

  
  

  @override
  State<TeamFolderPage> createState() => _TeamFolderPageState();
  
}

class _TeamFolderPageState extends State<TeamFolderPage> {
  double availableScreenWidth = 0;
  @override
  Widget build(BuildContext context) {
    availableScreenWidth = MediaQuery.of(context).size.width -50;
    return Scaffold(
      backgroundColor: Colors.lime,
      body: Column(children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 25),
          height: 170,
          decoration: BoxDecoration(color: Colors.blue.shade800),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text('Hogwarts',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            ),
            Text("Teams",
            style: TextStyle(fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Colors.white),
            ),

            ],
          ),
          Row(
            children: [
              Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black.withOpacity(.1),
              ),
              child: IconButton(
                icon: const Icon(Icons.search,
                size: 18,
                color: Colors.white,
                ),
                 onPressed: (){},
                ),
            ),
            const SizedBox(width: 10),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.black.withOpacity(.1),
              ),
              child: IconButton(
                icon: const Icon(Icons.notifications,
                size: 18,
                color: Colors.white,
                ),
                 onPressed: (){},
                ),
            ),
            ],
          )
          ],
          ),
        ),
        const SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
            text: const TextSpan(
              text: "Storage",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text: "1.9/10GB",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          ),
          const Text("Upgrade",
          style: TextStyle(fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.blue),
          )
          
          ],
          ),
        ),
        const SizedBox(height: 25),
        
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25,
          ),
          child: Row(
            children: [
              buildFileSizedChart("Sources", Colors.blue, .23),
              const SizedBox(width: 10),

              buildFileSizedChart("Docs", Colors.red,.23,),
              const SizedBox(width: 10),

              buildFileSizedChart("Images", Colors.yellow,.23,),
              const SizedBox(width: 10),

              buildFileSizedChart("Apps", Colors.blue,.20,),
            ],
          ),
        ),
       
        SizedBox(height: 15,),

        const Divider(height: 20,),
        Expanded(
          child: ListView(
            padding: EdgeInsets.all(25),
          children: [Text(
            "Recently updated",
          style: TextStyle(
            fontSize: 16,
          fontWeight: FontWeight.bold),
          ),
          
          SizedBox(height: 15,),
          Row(
            children: [
              Column(
                children: [Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(15),),
                    padding: EdgeInsets.all(30),
                    height: 80,
                  child: Image.asset("assets/images/pic1.png"),
                ),
                
                ],
                
              )
            ],
          )
          ],
        ),
        ),

      ],
      ),
      
    );
  }

  Column buildFileSizedChart(String title,Color? color, double widthPercentage) {
    return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
        
              children: [
                Container(
                width: availableScreenWidth * widthPercentage,
                height: 4,
                color: color,
              ),
        
              const SizedBox(height: 20),
        
               Text(title,
              style: TextStyle(fontSize: 10,
              fontWeight: FontWeight.bold),
              ),
              ],
            );
  }
}