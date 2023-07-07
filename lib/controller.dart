import 'package:get/get.dart';

class controller extends GetxController
{
  RxList  l=List.filled(9, '').obs;
  RxInt cnt=0.obs;
  RxString msg="".obs;
  bool iswin=false;
  get(int i)
  {
    if(!iswin)
    {
      if(l[i]=="")
      {
        if(cnt.value%2==0)
        {
          l[i]='x';
        }
        else
        {
          l[i]='0';
        }
        win();
        cnt.value++;
      }
    }
  }


  win()
  {
    if(l[0]=='x'&&l[1]=='x'&&l[2]=='x'||
        l[3]=='x'&&l[4]=='x'&&l[5]=='x'||
        l[6]=='x'&&l[7]=='x'&&l[8]=='x'||
        l[0]=='x'&&l[3]=='x'&&l[6]=='x'||
        l[1]=='x'&&l[4]=='x'&&l[7]=='x'||
        l[2]=='x'&&l[5]=='x'&&l[8]=='x'||
        l[0]=='x'&&l[4]=='x'&&l[8]=='x'||
        l[2]=='x'&&l[4]=='x'&&l[6]=='x')
    {
      msg.value="x is win";
      iswin=true;

    }
    else if(l[0]=='0'&&l[1]=='0'&&l[2]=='0'||
        l[3]=='0'&&l[4]=='0'&&l[5]=='0'||
        l[6]=='0'&&l[7]=='0'&&l[8]=='0'||
        l[0]=='0'&&l[3]=='0'&&l[6]=='0'||
        l[1]=='0'&&l[4]=='0'&&l[7]=='0'||
        l[2]=='0'&&l[5]=='0'&&l[8]=='0'||
        l[0]=='0'&&l[4]=='0'&&l[8]=='0'||
        l[2]=='0'&&l[4]=='0'&&l[6]=='0')
    {
      msg.value="0 is win";
      iswin=true;
    }
  }
  reset()
  {
    for(int i=0;i<l.length;i++)
    {
      l[i]="";

    }
    cnt.value++;
  }
}