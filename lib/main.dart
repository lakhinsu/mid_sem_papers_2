import 'package:flutter/material.dart';
import 'papersview.dart';
import 'themedata.dart' as themedata;
import 'package:rflutter_alert/rflutter_alert.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Mid Sem Papers'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String key = 'night';

  void showAlert() {
    var alertStyle = AlertStyle(
      overlayColor: Colors.black.withOpacity(0.85),
      animationType: AnimationType.fromTop,
      isCloseButton: true,
      isOverlayTapDismiss: false,
      descStyle: TextStyle(fontWeight: FontWeight.bold),
      animationDuration: Duration(milliseconds: 400),
      alertBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: Colors.black,
        ),
      ),
      titleStyle: TextStyle(
        color: Colors.black,
      ),
    );

    Widget alertContent = Column(
      children: <Widget>[
        ListTile(
          title: Text('11-03 : S.E.'),
        ),
        ListTile(
          title: Text('12-03 : Ad. Java'),
        ),
        ListTile(
          title: Text('13-03 : Web Tech.'),
        ),
        ListTile(
          title: Text('14-03 : Data Comp.'),
        ),
        ListTile(
          title: Text('15-03 : D.O.S./DotNet'),
        ),
      ],
    );

    Alert(
        context: context,
        title:'Time Table',
        style: alertStyle,
        content: alertContent,
        buttons: [
          DialogButton(
            color: Color(0xfff9a825),
            width: MediaQuery.of(context).size.width*0.3,
            child: Text('Cool'),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ]).show();
  }

  void subPage(String sub) {
    Navigator.push(
        context,
        new MaterialPageRoute(
            builder: (__) => new PapersView(
              sub: sub,
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: themedata.themechooser(),
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepOrange,
            title: Text(widget.title),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.event_note),
                onPressed: () {
                  showAlert();
                },
              ),
              IconButton(
                icon: Icon(Icons.brightness_2),
                onPressed: () {
                 if(themedata.night){
                setState(() {
                 themedata.night=false; 
                });
              }
              else
              {
                setState(() {
                 themedata.night=true; 
                });
              }
                },
              ),
            ],
          ),
          body: ListView(
            children: <Widget>[
              Card(
                color: Color(0xfff9a825),
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text('J'),
                    backgroundColor:
                    themedata.night ? Colors.black : Colors.white,
                    foregroundColor:
                    themedata.night ? Colors.white : Colors.black,
                  ),
                  title: Text(
                    'Advance Java',
                    style: TextStyle(color: Colors.black),
                  ),
                  onTap: () {
                    subPage('AdJava');
                  },
                  subtitle: Text('7 Papers+Darshan'),
                ),
              ),
              Card(
                color: Color(0xfff9a825),
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text('W'),
                    backgroundColor:
                    themedata.night ? Colors.black : Colors.white,
                    foregroundColor:
                    themedata.night ? Colors.white : Colors.black,
                  ),
                  title: Text(
                    'Web Tech',
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Text('6 Papers+Darshan'),
                  onTap: () {
                    subPage('WT');
                  },
                ),
              ),
              Card(
                color: Color(0xfff9a825),
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text('D'),
                    backgroundColor:
                    themedata.night ? Colors.black : Colors.white,
                    foregroundColor:
                    themedata.night ? Colors.white : Colors.black,
                  ),
                  title: Text(
                    'Data Comp.',
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Text('7 Papers+Darshan'),
                  onTap: () {
                    subPage('DC');
                  },
                ),
              ),
              Card(
                color: Color(0xfff9a825),
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text('SE'),
                    backgroundColor:
                    themedata.night ? Colors.black : Colors.white,
                    foregroundColor:
                    themedata.night ? Colors.white : Colors.black,
                  ),
                  title: Text(
                    'Software Engg.',
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Text('8 Papers+Darshan'),
                  onTap: () {
                    subPage('SE');
                  },
                ),
              ),
              Card(
                color: Color(0xfff9a825),
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text('.N'),
                    backgroundColor:
                    themedata.night ? Colors.black : Colors.white,
                    foregroundColor:
                    themedata.night ? Colors.white : Colors.black,
                  ),
                  title: Text(
                    'DotNet',
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Text('7 Papers+Darshan'),
                  onTap: () {
                    subPage('DN');
                  },
                ),
              ),
              Card(
                color: Color(0xfff9a825),
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text('DOS'),
                    backgroundColor:
                    themedata.night ? Colors.black : Colors.white,
                    foregroundColor:
                    themedata.night ? Colors.white : Colors.black,
                  ),
                  title: Text(
                    'Dist. OS',
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Text('8 Papers+Darshan'),
                  onTap: () {
                    subPage('DOS');
                  },
                ),
              )
            ],
          )
// This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
