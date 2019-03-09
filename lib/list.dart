class PaperList{
  List<String> papers=new List<String>();
  List<String> buildJava(){
    papers.add('JAVA-Darshan');
    papers.add('JAVA-18');
    papers.add('JAVA-REM-18');
    papers.add('JAVA-16');
    papers.add('JAVA-REM-16');
    papers.add('JAVA-15');
    papers.add('JAVA-14');
    papers.add('JAVA-REM-14');
    return papers;
  }
  List<String> buildWT(){
    papers.add('WebTech-Darshan');
    papers.add('WebTech-18');
    papers.add('WebTech-14');
    papers.add('WebTech-REM-14');
    papers.add('WebTech-13');
    papers.add('WebTech-REM-13');
    papers.add('WebTech-11');

    return papers;
  }
  List<String> buildDCDR(){
    papers.add('DCDR-18');
    papers.add('DCDR-REM-17');
    papers.add('DCDR-REM-16');


    return papers;
  }

  List<String> buildDN(){
    papers.add('DotNet-Darshan');
    papers.add('DotNet-REM-18');
    papers.add('DotNet-17');
    papers.add('DotNet-16');
    papers.add('DotNet-14');
    papers.add('DotNet-REM-14');
    papers.add('DotNet-13');
    papers.add('DotNet-11');
    return papers;
  }

  List<String> buildDOS(){
    papers.add('DOS-Darshan');
    return papers;

  }

  List<String> buildSE(){
    papers.add('SE-Darshan');
    papers.add('SE-REM-18');
    papers.add('SE-REM-17');
    papers.add('SE-REM-16');
    papers.add('SE-REM-14');
    papers.add('SE-12');
    papers.add('SE-REM-11');
    return papers;
  }


}