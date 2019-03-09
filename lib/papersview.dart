import 'package:flutter/material.dart';
import 'list.dart';
import 'package:flutter_pdf_viewer/flutter_pdf_viewer.dart';
import 'themedata.dart' as themedata;
import 'package:rflutter_alert/rflutter_alert.dart';

class PapersView extends StatefulWidget{
  String sub;
  PapersView({this.sub});


  @override
  _PapersView createState() => _PapersView();
}

class _PapersView extends State<PapersView>{
  String key='night';

  void showAlert() {
    var alertStyle = AlertStyle(
      animationType: AnimationType.fromTop,
      isCloseButton: true,
      isOverlayTapDismiss: false,
      overlayColor: Colors.black.withOpacity(0.85),
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




  _openPDF(String name){
    PdfViewer.loadAsset('papers/'+name+'.pdf',config: PdfViewerConfig(
        nightMode:themedata.night,
        swipeHorizontal: false,
        pageFling: true,
        pageSnap: true,
        enableImmersive: true,
        autoPlay: false),
    );
  }


  @override
  Widget build(BuildContext context){
    PaperList papers=new PaperList();
    List<String> list=new List<String>();
    if(widget.sub=='AdJava')
      list=papers.buildJava();
    else if(widget.sub=='WT')
      list=papers.buildWT();
    else if(widget.sub=='DC')
      list=papers.buildDCDR();
    else if(widget.sub=='SE')
      list=papers.buildSE();
    else if(widget.sub=='DN')
      list=papers.buildDN();
    else if(widget.sub=='DOS')
      list=papers.buildDOS();

    return Theme(
      data: themedata.themechooser(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text('Papers'),
          leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: (){
            Navigator.pop(context);
          },),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.event_note),onPressed: (){
              showAlert();

            },),
            IconButton(icon: Icon(Icons.brightness_2),onPressed: (){
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


            },),
          ],
        ),
        body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context,index){
            return  Card(
              color: Color(0xfff9a825),
              child: ListTile(
                leading: CircleAvatar(
                  child: Text('PDF'),
                  backgroundColor: themedata.night?Colors.black:Colors.white,
                  foregroundColor: themedata.night?Colors.white:Colors.black,
                ),
                title: Text(list.elementAt(index)),
                onTap: (){
                  _openPDF(list.elementAt(index));
                  //FlutterPdfViewer.loadAsset('assets/test.pdf');
                  //  print(list.elementAt(index));
                },
              ),
            );
          },
        ),
      ),
    );
  }
}