import 'package:flutter/material.dart';
void main() {runApp(const MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Conversation',
      home: MyHomePage(),);}}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF171717),
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40, left: 5, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection:
                  Axis.horizontal, //خلت كلمة مسج ع جنب مش الوسط
                  padding: const EdgeInsets.only(left: 10),
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Messages',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                    const SizedBox(
                      width: 35,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Online',
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        )),
                    const SizedBox(
                      width: 35,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Groups',
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        )),
                    const SizedBox(
                      width: 35,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'More',
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        )),
                    const SizedBox(
                      width: 35,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 190,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(top: 15, left: 25, right: 25),
              height: 220,
              decoration: BoxDecoration(
                  color: Color(0xFF27c1a9),
                  borderRadius: BorderRadius.only(
                    //زوايا دائريه
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Favorite contacts',
                        style: TextStyle(color: Colors.white),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_horiz, color: Colors.white,)),
                    ],),
                  SizedBox(height: 90,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        buildContactAvater('Alla', 'img1.jpeg',),
                        buildContactAvater('zozo', 'img2.jpeg',),
                        buildContactAvater('shosho', 'img3.jpeg',),
                        buildContactAvater('wizo', 'img4.jpeg',),
                        buildContactAvater('lolo', 'img5.jpeg',),
                        buildContactAvater('dody', 'img6.jpeg',),],
                    ),
                  ),],
              ),
            ),
          ),
          Positioned(top: 365, left: 0, right: 0, bottom: 0,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      //زوايا دائريه
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40)),
                    color: Color(0xFFEFFFFC)
                ),
                child: ListView(
                  padding: EdgeInsets.only(left: 25, top: 25),
                  children:  [buildConversationRow('lolo','Hello,how are you','img1.jpeg',5),
                    buildConversationRow('Alla','i will set you','img2.jpeg',0),
                    buildConversationRow('dody','Hello,how are you','img3.jpeg',3),
                    buildConversationRow('wizo','Go ahead','img4.jpeg',2),
                    buildConversationRow('zozo','Are you ok','img5.jpeg',7),
                    buildConversationRow('shosho','Honey','img6.jpeg',4),


                  ],),
              ))],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,// زورار نيو الكتابه
      floatingActionButton: SizedBox(
        height: 65,
        width: 65,
        child: FloatingActionButton(
          backgroundColor: Color(0xFF26c1a9),
          child: Icon(Icons.edit_outlined,size: 30,),
          onPressed: (){},
        ),
      ),
      
    );}











                Column buildConversationRow(String name,String message,String filename,int msgCount){
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            UserAvater(filename: filename),
                            SizedBox(width: 15,),

                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  name,
                                  style: TextStyle(color: Colors.black),
                                ),
                                SizedBox(height: 5,),
                                Text(
                                  message,
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            )
                          ],
                        ),
Padding(
  padding: EdgeInsets.only(right:25,top: 5),
  child:   Column(
    children: [
      Text('16:20',style: TextStyle(fontSize: 10),
      ),
      SizedBox(height: 15,),
      if(msgCount>0)
      CircleAvatar(
        radius: 7,
        backgroundColor: Color(0xFF27c1a9),
        child: Text(msgCount.toString(),style: TextStyle(fontSize: 10,color: Colors.white),),
      )
    ],
  ),
)
                      ],
                    ),
                    Divider(
                      indent: 70,  //سطر تحت 1 محادثه
                    )
                  ],
                );
  }
  Padding buildContactAvater(String name, String filename) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Column(
        children: [
          UserAvater(
            filename: filename,
          ),
          SizedBox(
            height: 5,
          ),
          Text(name,
            style: TextStyle(color: Colors.white, fontSize: 16),
          )],
      ),
    );}}
class UserAvater extends StatelessWidget {
  final String filename;
  const UserAvater({super.key, required this.filename});
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 32,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 29,
        backgroundImage: Image.asset('assets/images/$filename').image,
      ),
    );}}
