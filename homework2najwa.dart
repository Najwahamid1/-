import 'package:flutter/material.dart';

class mywork extends StatelessWidget{
  final List<Map<String, String>> item=[// فاينلي معناه ان البيانات لا تتغير بعد تعريفها
    {"name":"bee","image":"assets/images/bee.jpg"},
    {"name":"bird","image":"assets/images/bird.jpg"},
    {"name":"owl","image":"assets/images/owl.jpg"},
    {"name":"duck","image":"assets/images/duck.jpg"},
    {"name":"sheep","image":"assets/images/sheep.jpg"},
    {"name":"tiger","image":"assets/images/tiger.jpg"},
    {"name":"walf","image":"assets/images/walf.jpg"},
    {"name":"cat","image":"assets/images/cat.jpg"},
    {"name":"monkey","image":"assets/images/monkey.jpg"},
    {"name":"horse","image":"assets/images/horse.jpg"},
    {"name":"cat","image":"assets/images/cat.jpg"},
    {"name":"monkey","image":"assets/images/monkey.jpg"},
    {"name":"horse","image":"assets/images/horse.jpg"},
  ];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("second app"),
       backgroundColor: Colors.green,
     ),
     body: GridView.builder(// قريد يعرض العناصر على شكل شبكة
      scrollDirection: Axis.vertical,
       padding: EdgeInsets.all(2),//البلدر يسمح بعرض عدد كبير من العناصر ديناميكيا
       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,//عدد الاعمدة,
       crossAxisSpacing: 6,//المسافه بين الكروت و اللي جنبه
         mainAxisExtent: 150,// المسافه بين الكرت الاول واللي بعده
       ),
       itemCount: item.length,
       itemBuilder: (context,index) {//داله تنشاء كل عنصل على حسب الاندكس
         return buildCard(
           item[index]["name"]!,
           item[index]["image"]!,
         );
       },

     ),
   );
  }
  Widget buildCard(String name,String imagePath){

    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 60,
            width: 100,
            fit: BoxFit.contain//هاذا الامر يعدل حجم الصوره
          ),
          SizedBox(height: 7,),
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 16),
          )
        ],
      ),
    );
  }
}
