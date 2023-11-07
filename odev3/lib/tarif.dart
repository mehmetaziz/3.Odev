import 'package:flutter/material.dart';
import 'package:odev4/renkler.dart';


class Tarif extends StatefulWidget {
  const Tarif({super.key});

  @override
  State<Tarif> createState() => _TarifState();
}

class _TarifState extends State<Tarif> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Etli Bezelyeli Yemek",
          style:
              TextStyle(fontSize: 25, fontFamily: "Poppins", color: yaziRenk1),
        ),
        centerTitle: true,
        backgroundColor: anaRenk,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.note_add))],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("resimler/etli-bezelyeli-yemek.png"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: anaRenk),padding: EdgeInsets.all(5),
                  child: PopupMenuButton(
                    child: Text(
                      "Malzemeler",
                      style: TextStyle(fontFamily: "Poppins"),
                    ),
                    color: anaRenk,
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem(
                            child: Text(
                          """
                350 gram kuşbaşı dana eti
                1 adet büyük boy havuç
                1 adet büyük boy patates
                500 gram bezelye
                1/2 çay bardağı sıvı yağ
                1 yemek kaşığı domates salçası
                1 tutam tuz
                1 tutam karabiber
                1 çay kaşığı pul biber
                """,
                          style: TextStyle(fontFamily: "Poppins"),
                        )
                        )
                      ];
                    },
                  ),
                ),
                Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: anaRenk),padding: EdgeInsets.all(5),
                  child: PopupMenuButton(
                    child: Text(
                      "Yapılışı",
                      style: TextStyle(fontFamily: "Poppins"),
                    ),
                    color: anaRenk,
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem(
                            child: Text(
                          """
                -Kuşbaşı eti düdüklü tencerede hafif yumuşayana kadar pişirin.
                
                -Soğanı yemeklik doğrayın. Tencereye alın ve kavurun. Salçayı ekleyip kavurmaya devam edin.
                
                -Etleri ekleyin. Patates ve havucu küp küp doğrayın ve tencereye alın.
                
                -Bezelyeleri de ekleyin. 5 dk kadar nazik bir şekilde kavurun. 
                Tuzunu ekleyin. Etin haşlama suyunu ekleyin. 
                Kalanı da normal sıcak suyla üzerini geçecek kadar  tamamlayın.
                
                -Kısık ateşte sebzeler yumuşayana kadar pişirin.
                
                -Sebzeler de yumuşayınca servis edin. Afiyet olsun.
                
                """,
                          style: TextStyle(fontFamily: "Poppins"),
                        ))
                      ];
                    },
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
