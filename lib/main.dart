import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

final player=AudioPlayer()..setReleaseMode(ReleaseMode.loop);

void main()=>runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final tabs=[
    screen1(),
    screen2(),
    screen3(),
    screen4(),
  ];

  int previousIndex=0;
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    if (currentIndex==0) player.play(AssetSource("1.mp3"));
    return MaterialApp(
      title: '我的自傳',
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,),
      home: Scaffold(
        appBar: AppBar(title: Text('我的自傳'),),
        body: tabs[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          selectedFontSize: 18,
          unselectedFontSize: 14,
          iconSize: 30,
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.person), label:'自我介紹',),
            BottomNavigationBarItem(icon: Icon(Icons.school), label:'學習歷程',),
            BottomNavigationBarItem(icon: Icon(Icons.schedule_outlined), label:'學習計畫',),
            BottomNavigationBarItem(icon: Icon(Icons.engineering), label:'專業方向',),
          ],
          onTap: (index) {
            setState(() {
              previousIndex=currentIndex;
              currentIndex=index;
              if (index==0) {
                if (previousIndex==currentIndex) player.resume();
                player.stop();
                player.play(AssetSource('1.mp3'));
              }
              if (index==1) {
                if (previousIndex==currentIndex) player.resume();
                player.stop();
                player.play(AssetSource('2.mp3'));
              }
              if (index==2) {
                if (previousIndex==currentIndex) player.resume();
                player.stop();
                player.play(AssetSource('3.mp3'));
              }
              if (index==3) {
                if (previousIndex==currentIndex) player.resume();
                player.stop();
                player.play(AssetSource('4.mp3'));
              }
            });
          },
        ),
      ),
    );
  }
}

class screen1 extends StatelessWidget {

  final String s1='我是黃吉菘，我出生於彰化市，在一個充滿愛和關懷的家庭中長大。我的家人是我生命中最重要的支持系統，他們教導了我生活的價值觀和堅持。這樣的環境讓我學會了珍惜家庭和人際關係，並激發了我對學習和成長的渴望。\n'
      '我小時候對於世界充滿了好奇心，對於各種事物都抱著探索的態度。\n'
      '在學校，我努力學習，追求知識的深度和廣度。我喜歡探索新的領域，挑戰自己的極限。這種對知識的追求推動著我參與各種學術和課外活動，培養了我解決問題和合作的能力。\n'
      '我的興趣和愛好涵蓋了各種領域，包括（ACG、科技、影視業幕後）。這些愛好不僅豐富了我的生活，還為我提供了不同的視角和靈感。我相信多元化的興趣有助於培養創造力和解決問題的能力。\n'
      '當我回顧過去，我感到自己在不斷成長和進步。我相信每一次的挑戰和困難都是一次寶貴的學習機會，讓我更堅韌，更有智慧地面對未來。\n'
      '未來，我期待著繼續追求卓越，發現新的可能性，並繼續對社會做出積極的貢獻。';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //放標題
          Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text('Who am I', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
          ),
          //自傳部份
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width:3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(color: Colors.amberAccent, offset: Offset(6, 6)),
              ],
            ),
            child: Text(s1, style: TextStyle(fontSize: 20)),
          ),
          SizedBox(height: 10,),
          //放一張照片
          Container(
            color: Colors.redAccent,
            child:Image.asset('images/f1.jpg'),
            height: 200,
            width: 200,
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height:150,
                decoration: BoxDecoration(
                  border: Border.all(width:2, color: Colors.purple, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(image: AssetImage('images/f1.jpg'), fit: BoxFit.cover),
                ),
                //color: Colors.white,
              ),
              Container(
                width: 150,
                height:150,
                decoration: BoxDecoration(
                  border: Border.all(width:2, color: Colors.purple, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(image: AssetImage('images/f1.jpg'), fit: BoxFit.cover),
                ),
                //color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class screen2 extends StatelessWidget {

  final String s1='我來自彰化縣的彰化市，\n小學就讀大竹國小、\n畢業後升上彰德國中、\n接著考上讀彰師附工、\n畢業後來到高科大。\n'
      '在高中時期，共考取了:\n數位電子乙級證照、\n工業電子丙級、\n電腦軟體應用丙級等證照';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //放標題
          Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text('學習歷程', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
          ),
          //自傳部份
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width:3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(color: Colors.cyanAccent, offset: Offset(6, 6)),
              ],
            ),
            child: Text(s1, style: TextStyle(fontSize: 20)),
          ),
        ],
      ),
    );
  }
}

class screen3 extends StatelessWidget {

  final String s1='大一:\n1.提升英文讀寫能力\n2.熟習各類程式語言\n3.認識新同學\n'
      '大二\n1.加強英文讀寫能力\n2.學習更深入的程式相關架構\n3.開始尋找專題課題\n'
      '大三:\n1.提升英文聽說能力\n2.完成專題製作\n3.尋找未來方向(研究所or實習)\n'
      '大四:\n1.考取多益成績至畢業門檻以上\n2.朝目標(研究所or實習)加強相關能力';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //放標題
          Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text('學習計畫', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
          ),
          //自傳部份
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width:3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(color: Colors.green, offset: Offset(6, 6)),
              ],
            ),
            child: Text(s1, style: TextStyle(fontSize: 20)),
          ),
        ],
      ),
    );
  }
}

class screen4 extends StatelessWidget {

  final String s1='1.掌握各類語言程式，並熟知各類語言基礎\n2.具備一定水準英文能力\n3.了解市場大方向\n4.能與他人溝通與合作';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //放標題
          Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
            child: Text('專業方向', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
          ),
          //自傳部份
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 50),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width:3),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(color: Colors.deepPurpleAccent, offset: Offset(6, 6)),
              ],
            ),
            child: Text(s1, style: TextStyle(fontSize: 20)),
          ),
        ],
      ),
    );
  }
}