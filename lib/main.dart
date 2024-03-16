import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() =>runApp(const MaterialApp(
    home: UserPanel(),
));

class UserPanel extends StatefulWidget {
  const UserPanel({super.key});

  @override
  State<UserPanel> createState() => _UserPanelState();
}

class _UserPanelState extends State<UserPanel> {

  int _likes=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
            title: Text("3 практическая работа"),
            centerTitle: true,
            backgroundColor: Colors.pinkAccent,
        ),
        body:  SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children:[
                  Padding(padding: EdgeInsets.only(top: 40),),
                  Text('София', style: TextStyle(
                    fontSize: 24,
                    color: Colors.black
                  ),),
                  Padding(padding: EdgeInsets.only(top: 20),),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/kot.jpg'),
                    radius: 100,
                  ),
                  Padding(padding: EdgeInsets.only(top: 20),),
                  Row(
                    children: [
                      Icon(Icons.mail_outline,size: 24),
                      Padding(padding: EdgeInsets.only(left: 10),),
                      Text('lublupoest@mail.ru', style: TextStyle(
                        fontSize: 24,
                      ),),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(left: 20),),
                  Text('Лайки: $_likes',style: TextStyle(fontSize: 24),),
                  Padding(padding: EdgeInsets.only(left: 20),),
                  OutlinedButton.icon(label: Text('Нажми'),onPressed:() {setState(() {_likes++;});},icon: Icon(Icons.heart_broken)),
                ],
              )
            ],
          ),
        ),
    );
  }
}

