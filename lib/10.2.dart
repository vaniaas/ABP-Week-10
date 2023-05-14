import 'package:abp_week_10/10.1.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Layout part 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Demo Layout part 1'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget{
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final data = const [
    {"tgl": "02/03/2022", "nilai": "150"},
    {"tgl": "01/02/2022", "nilai": "140"},
    {"tgl": "12/01/2022", "nilai": "170"},
    {"tgl": "11/12/2021", "nilai": "110"},
    {"tgl": "10/11/2021", "nilai": "180"},
    {"tgl": "09/10/2021", "nilai": "190"},
    {"tgl": "08/09/2021", "nilai": "160"},
    {"tgl": "07/08/2021", "nilai": "155"},
    {"tgl": "06/07/2021", "nilai": "145"},
    {"tgl": "05/06/2021", "nilai": "140"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Column(
              children: [
                Container(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const[
                            Text("Welcome,", style: TextStyle(
                                color: Color(0xFF7367F0),
                                fontSize: 28,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.25) // TextStyle
                            ),
                            Text(
                              "1301204365 - Vania Amadea",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF4B4B4B)), //TextStyle
                            ),
                          ],
                        ),
                        const CircleAvatar(
                          radius: 20,
                          //backgroudImage: AssetImage('assets/profpic.png'),
                        ),
                      ], //Tex//Text
                    )
                ),
                Container(),
                Container(),
                Container(
                    height: 300,
                    child: ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          return Column(
                              children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceEvenly,
                                    children: [
                                      Text(
                                          'Tanggal tes:\nNilai:',
                                          style: TextStyle(
                                              color: Colors.blue, fontSize: 20)
                                      ),
                                      Text(
                                        data[index]["tgl"]! + '\n' +
                                            data[index]["nilai"]!,
                                        style: TextStyle(
                                            color: Colors.blue, fontSize: 20),
                                      ),
                                    ]
                                ),
                                SizedBox(height: 10)
                              ]
                          );
                        }
                    )
                ),
              ],
            ),
          ),
        )
    );
  }
}