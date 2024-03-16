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
                  Padding(padding: EdgeInsets.only(bottom: 10),),
                  OutlinedButton.icon(label: Text('Нажми'),onPressed:() {setState(() {_likes++;});},icon: Icon(Icons.heart_broken)),
                  Padding(padding: EdgeInsets.only(bottom: 10),),
                  ElevatedButton(child: const Text("Перейти в профиль"),onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context)=> const Account()));},),
                ],
              )
            ],
          ),
        ),
    );
  }
}
class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aккаунт'),
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
                Text('УПС, при загрузке страницы возрикла ошибка', style: TextStyle(
                    fontSize: 24,
                    color: Colors.pinkAccent
                ),),
                Padding(padding: EdgeInsets.only(top: 20),),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Вернутся на главный экран'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
